import "../styles/widget/reservation-card.css"
import { useAppDispatch,useAppSelector } from "../hooks/hooks";
import { getReservation } from "../store/mentoringSlice";

function ReservationCard(props : any){

    const dispatch = useAppDispatch();
    let funcAfterDrag : any;
    const reservationList = useAppSelector(state => state.mentoring.reservationList);
    const appointmentList = useAppSelector(state => state.mentoring.appointmentList);
    if(props.isEnterable){
        funcAfterDrag = ()=>{
            for(let i = 0; i < appointmentList.applys.length; ++i){
                if(appointmentList.applys[i].applyMentoringId === props.info[4]){
                    // 이곳에 api호출
                }
            }
        }
    }
    else{
        funcAfterDrag = ()=>{
            for(let i = 0; i < reservationList.appliedList.length; ++i){
                if(reservationList.appliedList[i].applyMentoringId === props.info[4]){
                    reservationList.appliedList.splice(i,1);
                    dispatch(getReservation(reservationList));
                    return true;
                }
            }
        }
    }

    return(
        <div className="card_outer">            
            <div className={"reservation_card" + (props.isAbleDrag ? "" : " isNotAbleDrag")} onMouseDown={(event)=>{
                props.drag(event,"reservation_card",props.container,props.isEnterable,funcAfterDrag);            
        }}>
                <div className = "cancel_description">
                    {props.hoverText}
                </div>
                <div className="card_name">
                    {props.info[0]}
                </div>
                <div className="card_info">
                    {props.info[1]}
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