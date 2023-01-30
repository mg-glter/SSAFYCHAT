import Header from "../layout/Header"
import Footer from "../layout/Footer"
import MainContainer from "../container/MainContainer"
import Banner from "../components/common/Banner"

function MainPage (){
    return (
        <div>
            <Header></Header>
            <Banner name="마이페이지" imgName="banner1"></Banner>
            <MainContainer></MainContainer>            
            <Footer></Footer>
        </div>
    )
}
export default MainPage