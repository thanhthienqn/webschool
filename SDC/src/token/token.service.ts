import {
  Inject,
  Injectable,
  UnprocessableEntityException,
  forwardRef,
} from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { SignOptions, TokenExpiredError } from 'jsonwebtoken';
import { AuthService } from 'src/auth/auth.service';
import { AccountForToken } from 'src/auth/dto/AccountForToken';
import { AccountForFull } from 'src/auth/dto/AccountFull';
import { Role } from 'src/decorator/role.enum';

const BASE_OPTIONS: SignOptions = {
  issuer: 'https://ethin-sdc********',
  audience: '*****ethin-sdc******',
};
@Injectable()
export class TokenService {
  public constructor(
    @Inject(forwardRef(() => AuthService))
    private auth: AuthService,
    private jwt: JwtService,
  ) {}

  public async generateAccessToken(account: AccountForFull): Promise<string> {
    const rolesInAccount = account.roles
      ?.map((item) => item.nameRole as Role)
      .filter(Boolean);
    const opts = {
      ...BASE_OPTIONS,
      expiresIn: '1d',
      subject: String(account.id),
      secret: process.env.JWT_SECRET,
    };
    const token: AccountForToken = {
      email: account.email,
      name: account.name,
      id: account.id,
      roles: rolesInAccount.length > 0 ? rolesInAccount : [Role.Admin],
    };
    return this.jwt.signAsync({ token }, opts);
  }

  public async generateRefreshToken(account: AccountForFull): Promise<string> {
    const rolesInAccount = account.roles
      .map((item) => item.nameRole as Role)
      .filter(Boolean);
    const opts = {
      ...BASE_OPTIONS,
      expiresIn: '30d',
      subject: String(account.id),
      secret: process.env.JWT_SECRET,
    };
    const token: AccountForToken = {
      email: account.email,
      name: account.name,
      id: account.id,
      roles: rolesInAccount.length > 0 ? rolesInAccount : [Role.Admin],
    };
    return this.jwt.sign({ token }, opts);
  }

  private async resolveRefreshToken(
    encoded: string,
  ): Promise<{ account: AccountForFull }> {
    //find token by account
    const accountByRT = await this.auth.findAccountByRT(encoded);
    if (!accountByRT) {
      //if account is not valid, refreshtoken not found
      throw new UnprocessableEntityException('Refresh token not found');
    }
    //decodeRefreshToken check valid RT
    await this.isValidRefreshToken(encoded, accountByRT);
    return { account: accountByRT };
  }

  public async createAccessTokenFromRefreshToken(
    refresh: string,
  ): Promise<{ token: string; account: AccountForFull }> {
    const { account } = await this.resolveRefreshToken(refresh);
    const token = await this.generateAccessToken(account);
    return { token, account };
  }

  private async isValidRefreshToken(
    token: string,
    account: AccountForFull,
  ): Promise<any> {
    try {
      return this.jwt.verifyAsync(token, { secret: process.env.JWT_SECRET });
    } catch (e) {
      if (e instanceof TokenExpiredError) {
        //update new RT
        const newRT = await this.generateRefreshToken(account);
        await this.auth.updateRefreshToken(token, newRT, account.id);
        //remove all AT by RT (pending)
      } else {
        throw new UnprocessableEntityException('Refresh token malformed');
      }
    }
  }
}
