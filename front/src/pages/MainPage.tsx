import Header from "../layout/Header"
import Footer from "../layout/Footer"
import MainContainer from "../container/MainContainer"
import Banner from "../components/common/Banner"

function MainPage (){
    return (
        <div>
            <Header></Header>
            <MainContainer></MainContainer>            
            <Footer></Footer>
        </div>
    )
}
export default MainPage