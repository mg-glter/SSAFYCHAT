import "../../styles/components/reservation/reserved-list.css"

function ReservedListItem(props : any){
    return(
        <tr className="reserved_list_tr reserved_list_tr_body">
            <td>2023.01.01</td>
            <td>김도원</td>
            <td>7전8기</td>
            <td>ssafy@ssafy.com</td>
            <td><div className="reserved_list_enter_button">입장</div></td>
        </tr>
    )
}

function ReservedList(props : any){
    return (
        <div className="reserved_list_container">
            <div className="reserved_list_header">
                나는 헤더
            </div>
            <table className="reserved_list_table">
                <thead>
                    <tr className="reserved_list_tr reserved_list_tr_head">
                       <th>날짜</th>
                       <th>이름</th>
                       <th>타이틀</th>
                       <th>이메일</th>
                       <th></th>
                    </tr>
                </thead>
                <tbody className="reserved_list_tbody">
                    <ReservedListItem></ReservedListItem>
                    <ReservedListItem></ReservedListItem>
                    <ReservedListItem></ReservedListItem>
                    <ReservedListItem></ReservedListItem>
                </tbody>
            </table>
        </div>
    )
}

export default ReservedList;