import "../../styles/components/common/card-list.css";
import ArrowButton from "../../widget/ArrowButton";
import ReservationCard from "../../widget/ReservationCard";

function CardList(props : any){
    const reservationCardList = [];
    for(let i = 0; i < 3; ++i){
        reservationCardList.push(<ReservationCard drag={props.drag} info={["김겨울","SMENT","가수","2020-01-01"]} key={i}></ReservationCard>)
    }

    return (
    // 카드리스트 전체를 감싸는 컨테이너
    <div className="card_list_container">
            {/* 헤더 */}
            <div className="card_list_header">
                <div className="header_text">
                    {props.header}
                </div>
           </div>

        {/* 카드리스트와 헤더를 감싸는 컨테이너 */}
        <div className="card_list_inner_container">
            {/* 좌 화살표 */}
            <div className="card_list_arrow">
                <ArrowButton text="<"></ArrowButton>
            </div>

            {/* 카드리스트 */}
            <div className="card_container">
                {/* 카드 */}
                {/* <ReservationCard drag={props.drag} info={["김겨울","SMENT","가수","2020-01-01"]}></ReservationCard> */}
                {reservationCardList};
            </div>

            {/* 우측 화살표 */}
            <div className="card_list_arrow">
                <ArrowButton text=">"></ArrowButton>
            </div>
        </div>


    </div>
    )
}

export default CardList;