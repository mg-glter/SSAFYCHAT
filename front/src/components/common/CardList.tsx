import "../../styles/components/common/card-list.css";

// function test(event : any){

//     const con = event.target.parentElement;
//     const card = event.target;
    

//     con.addEventListener("dragleave",(e:Event)=>{
//         e.preventDefault();
//         console.log(123);
//     })
// }

function test(e : any){
    // 요소 가져오기
    let t = e.target;
    // 기존의 드래그를 없애기
    // t.ondragstart = function(){
    //     return false;
    // }
    // 카드가 리스트 밖으로 나갔는지 확인하는 변수
    let onDrag = true;

    // 요소가 카드를 가리키게 하긱    
    while(t.className !== "card"){
        t = t.parentElement;        
    }
    // 카드 아우터 요소를 가져오기
    const p = t.parentElement;
    // 카드 컨테이너 요소를 가져오기
    const container = p.parentElement;

    // 카드가 이동가능하게 만들기
    t.style.position = 'absolute';
    t.style.zIndex = 1000;

    // 카드의 기존 위치 저장
    const l = t.style.left;
    const to = t.style.top;

    // 카드를 body의 자식으로
    document.body.append(t);

    // 드래그 위치에 따라 위치를 바꾸는 함수
    function moveAt(pageX : number,pageY : number){
        t.style.left = pageX - t.offsetWidth / 2 + 'px';
        t.style.top = pageY - t.offsetHeight / 2 + 'px';
    }

    // 처음 클릭했을 때 마우스위치로 이동
    moveAt(e.pageX, e.pageY);

    

    // 마우스가 움직이면 카드 위치 변경하게 할 함수
    function onMouseMove(e : any){
        // 
        moveAt(e.pageX,e.pageY);
    }

    // 마우스가 움직이면 함수 호출
    document.addEventListener('mousemove', onMouseMove);

    container.onmouseleave = function(){
        if(onDrag){
            alert("삭제합니다");
            onDrag = false;
        }
    }

    // 마우스클릭 해제시 원래대로
    t.onmouseup = function(){
        document.removeEventListener('mousemove',onMouseMove);
        t.onmouseup = null;
        p.append(t);
        t.style.left = l;
        t.style.top = to;
        t.style.zIndex = 'auto';
    }
}

function Card(props : any){
    return(
        <div className="card_outer">
            <div className="card" onMouseDown={(event)=>{
                test(event);
                
            }}>
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