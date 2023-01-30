import "../styles/components/common/card-list.css"

function test(e : any){
    e.target.style.position = 'absolute';
    e.style.zIndex = 1000;
}

function ReservationCard(props : any){
    
    return(
        <div className="card_outer" onMouseDown={(event)=>
        {
            test(event);
        }}>
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