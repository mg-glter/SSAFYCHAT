import CardList from "../components/common/CardList";
import ReservedCardList from "../components/common/ReservedCardList";
import ReservedList from "../components/reservation/ReservedList";
import "../styles/container/reservation-container.css"

function ReservationContainer(){
    return (
        <div className="reservation_page_container">
            <div className="reservation_page_inner_container">
                <CardList></CardList>
                <ReservedCardList></ReservedCardList>
                <CardList></CardList>
                <ReservedList></ReservedList>
            </div>
        </div>
    )
}

export default ReservationContainer;