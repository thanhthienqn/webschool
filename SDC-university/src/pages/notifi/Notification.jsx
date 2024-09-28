import { fetchNotifi } from "@/redux/Notifi/notifiSlice";
import { useEffect } from "react";
import { MdKeyboardDoubleArrowRight } from "react-icons/md";
import { useDispatch, useSelector } from "react-redux";
import { Link, useParams } from "react-router-dom";
import FeaturedNews from "../news/featuredNews/FeaturedNews";




const Notification = () => {
    const { type } = useParams();
    const dispatch = useDispatch();

    const listNews = useSelector(state => state.news.listNews);

    const allNotifi = useSelector(state => state.notifi || []);
    const listNotifi = type === 'daotao'
        ? allNotifi.training || []
        : type === 'taichinh'
            ? allNotifi.finance || []
            : type === 'CTSV'
                ? allNotifi.student || []
                : []
        ;


    useEffect(() => {
        dispatch(fetchNotifi({ department: type }));
    }, [dispatch, type]);

    const getTitle = () => {
        switch (type) {
            case 'daotao':
                return 'THÔNG BÁO ĐÀO TẠO';
            case 'CTSV':
                return 'THÔNG BÁO SINH VIÊN';
            case 'taichinh':
                return 'THÔNG BÁO TÀI CHÍNH';
            default:
                return 'THÔNG BÁO';
        }
    };

    return (
        <div className="flex justify-center my-2 w-5/6 mx-auto">
            <div className="flex flex-[3] flex-col m-5 ">
                <div className="flex flex-col gap-4 p-4 border rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300">
                    <div className='text-red-500 font-bold text-xl bg-gray-100 p-2 border-l-4 border-yellow-400'>{getTitle()}</div>
                    <div className="flex flex-col gap-2">
                        <div className="flex flex-col  text-lg font-semibold gap-2">
                            {listNotifi && listNotifi.length > 0 ? (
                                listNotifi.slice(0, 5).map((item) => (
                                    <div key={item.id} className='flex items-center gap-2'>
                                        <MdKeyboardDoubleArrowRight />
                                        <Link to={item.id} className="hover:text-blue-500">
                                            {item.title}
                                        </Link>
                                    </div>
                                ))
                            ) : (
                                <div>Không có thông báo</div>
                            )}
                        </div>
                    </div>
                </div>
            </div>
            <div className="flex-col flex-1 gap-3 m-5 hidden md:flex border max-w-full">
                <FeaturedNews listNews={listNews} />
            </div>
        </div>
    );
}

export default Notification;
