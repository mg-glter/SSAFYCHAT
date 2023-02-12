import "../styles/widget/reservation-card.css"

function whatMyNick(nick: number){
    console.log(nick);
    switch (nick){
        case 1:
            return '1기';
        case 2:
            return '2기';
        case 3:
            return '3기';
        case 4:
            return '4기';
        case 5:
            return '5기로 극복';
        case 6:
            return '열정 핫식스';
        case 7:
            return '럭키세븐';
        case 8:
            return '7전8기';
        case 9:
            return '9뤠이트';
        case 10:
            return '10기';
    }
}

function ReservationCard(props : any){
    return(
        <div className="card_outer">            
            <div className={"reservation_card" + (props.isAbleDrag ? "" : " isNotAbleDrag")} onMouseDown={(event)=>{
                props.drag(event,"reservation_card",props.container,props.isEnterable);            
        }}>
                <div className = "cancel_description">
                    {props.hoverText}
                </div>
                <div className="card_name">
                    {props.info[0]}
                </div>
                <div className="card_info">
                    {whatMyNick(props.info[1])}
                </div>
                <div className="card_info">
                    {props.info[2]}
                </div>
                <div className="card_time">
                    {props.info[3]}
                </div>
          </div>
        </div>
    )
}

export default ReservationCard;