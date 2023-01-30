import CardList from "../components/common/CardList";
import ReservedList from "../components/common/ReservedList";
import "../styles/container/reservation-container.css"

function ReservationContainer(){
    return (
        <div className="reservation_page_container">
            <div className="reservation_page_inner_container">
                <CardList></CardList>
                <ReservedList></ReservedList>
                <CardList></CardList>
            </div>
        </div>
    )
}

export default ReservationContainer;