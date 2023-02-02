import CardList from "../components/common/CardList";
import ReservedCardList from "../components/mentoring/ReservedCardList";
import ReservedList from "../components/mentoring/ReservedList";
import "../styles/container/reservation-container.css"

function dragCard(event : any){
    // 요소 가져오기
    let elem = event.target;
    // 기존의 드래그를 없애기
    // elem.ondragstart = function(){
    //     return false;
    // }

    // 드래그
    let onDrag = true;

    // 요소가 카드를 가리키게 하기
    while(elem.className !== "reservation_card"){
        elem = elem.parentElement;        
    }
    // 카드 아우터 요소를 가져오기
    const outer = elem.parentElement;
    // 카드 컨테이너 요소를 가져오기
    const container = outer.parentElement;

    // 카드가 이동가능하게 만들기
    elem.style.position = 'absolute';
    elem.style.zIndex = 1000;

    // 카드의 기존 위치 저장
    const leftPos = elem.style.left;
    const topPos = elem.style.top;

    // 카드를 body의 자식으로
    document.body.append(elem);

    // 드래그 위치에 따라 위치를 바꾸는 함수
    function moveAt(pageX : number,pageY : number){
        elem.style.left = pageX - elem.offsetWidth / 2 + 'px';
        elem.style.top = pageY - elem.offsetHeight / 2 + 'px';
    }

    // 처음 클릭했을 때 마우스위치로 이동
    moveAt(event.pageX, event.pageY);

    

    // 마우스가 움직이면 카드 위치 변경하게 할 함수
    function onMouseMove(event : any){
        // 
        moveAt(event.pageX,event.pageY);
    }

    // 마우스가 움직이면 함수 호출
    document.addEventListener('mousemove', onMouseMove);

    container.onmouseleave = function(){
        if(onDrag){
            alert("삭제합니다");
            // **********************
            // 이 곳에 기능을 넣어야 함
            // **********************
            onDrag = false;
        }
    }
    container.onmouseover = function(){
        onDrag = false;
    }

    // 마우스클릭 해제시 원래대로
    elem.onmouseup = function(){
        document.removeEventListener('mousemove',onMouseMove);
        elem.onmouseup = null;
        outer.append(elem);
        elem.style.left = leftPos;
        elem.style.top = topPos;
        elem.style.zIndex = 'auto';
    }
}

function ReservationContainer(){
    const cardList = [["김도원","네이버","백엔드 개발자","2023-01-01"],["김겨울","SMENT","가수","2023-01-01"]];
    
    return (
        <div className="reservation_page_container">
            <div className="reservation_page_inner_container">
                <CardList drag={dragCard} header={"신청 목록"} cardList = {cardList}></CardList>
                <ReservedCardList></ReservedCardList>
                <CardList drag={()=>{return;}} header={"취소 목록"} cardList = {[]}></CardList>
                <ReservedList></ReservedList>
            </div>
        </div>
    )
}

export default ReservationContainer;