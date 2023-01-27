import "../../styles/components/common/card-list.css";

function Card(props : any){
    return(
        <div className="card_outer">
            <div className="card">
                <div className="card_mentor_name">
                    멘토 이름
                </div>
                <div className="card_mentor_info">
                    회사
                </div>
                <div className="card_mentor_info">
                    직무
                </div>
                <div className="card_time">
                    날짜, 시간
                </div>
          </div>
        </div>
    )
}

function CardList(props : any){
    return (
    // 카드리스트 전체를 감싸는 컨테이너
    <div className="card_list_container">
                    {/* 헤더 */}
                    <div className="card_list_header">
                <div className="header_text">
                    무엇의 목록
                </div>
           </div>


        {/* 카드리스트와 헤더를 감싸는 컨테이너 */}
        <div className="card_list_inner_container">
                {/* 좌 화살표 */}
                <div className="card_list_arrow">
            <div className="arrow_button">
                <div className="arrow">&lt;</div>
            </div>
        </div>

            {/* 카드리스트 */}
            <div className="card_container">
                {/* 카드 */}
                <Card></Card>
                <Card></Card>                
            </div>
                    {/* 우측 화살표 */}
        <div className="card_list_arrow">
        <div className="arrow_button">
            <div className="arrow">
                &gt;
            </div>
        </div>
        </div>
        </div>


    </div>
    )
}

export default CardList;