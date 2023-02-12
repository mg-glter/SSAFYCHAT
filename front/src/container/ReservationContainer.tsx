import CardList from "../components/common/CardList";
import ReservedCardList from "../components/mentoring/ReservedCardList";
import "../styles/container/reservation-container.css"
import { dragCard } from "../utils/ts/move";
import { useAppDispatch } from "../hooks/hooks"
import { changeBanner } from "../store/userSlice"
import { reservation } from "../api/mentoring";
import { useEffect } from "react";
import { useAppSelector } from "../hooks/hooks";
import { resourceLimits } from "worker_threads";
import { changeForm } from "../utils/ts/time";
function ReservationContainer(){
    const dispatch = useAppDispatch();
    dispatch(changeBanner("예약확인"));
    // 예약 리스트들 호출
    useEffect(()=>{
        console.log("reservation");
        reservation((success : any)=>{
            console.log(success);
            dispatch(success.data);
        },(fail : any)=>{console.log(fail)});
    })
    const reservationList = useAppSelector(state => state.mentoring.reservationList);
    // [["김도원","네이버","백엔드 개발자","2023-01-01"]
    let appliedList : any = [];  
    // {        time:"2022.02.02 AM 09:10",        name:"김겨울",        belong: "SMENT",        job:"아이돌",        num: "7전8기",    },  
    let matchedList : any= [];
    let canceledList : any = [];
    for(let i = 0; i < reservationList.appliedList.length; ++i){
        appliedList.push(["신청카드",reservationList.appliedList[i].company,reservationList.appliedList[i].job,reservationList.appliedList[i].times[0]]);
    }
    for(let i = 0; i < reservationList.matchedList.length; ++i){
        matchedList.push(reservationList.matchedList[i]);
    }
    for(let i = 0; i < reservationList.canceledList.length; ++i){
        canceledList.push(reservationList.canceledList[i]);
    }
    return (
        <div className="reservation_page_container">
            <div className="reservation_page_inner_container">
                <CardList drag={dragCard} header={"신청 목록"} cardList = {appliedList} isAbleDrag={true} container={"card_list_container"} isEnterable={false} hoverText={"리스트 바깥으로 드래그 앤 드롭하여 취소"}></CardList>
                <ReservedCardList cardList={matchedList}></ReservedCardList>
                <CardList drag={(event : any, tmp : string)=>{return;}}header={"취소 목록"} cardList = {canceledList}  container={"card_list_container"}  isAbleDrag={false} isEnterable={false}></CardList>
            </div>
        </div>
    )
}

export default ReservationContainer;