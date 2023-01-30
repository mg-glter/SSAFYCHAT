import Header from "../layout/Header"
import Footer from "../layout/Footer"
import MainContainer from "../components/MainContainer"
import Banner from "../components/common/Banner"
import ReservationContainer from "../container/ReservationContainer"

function MainPage (){
    return (
        <div>
            <Header></Header>
            <Banner name="마이페이지" imgName="banner1"></Banner>
            <ReservationContainer></ReservationContainer>          
            <Footer></Footer>
        </div>
    )
}
export default MainPage