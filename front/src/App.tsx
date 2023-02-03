import {Route, Routes} from 'react-router-dom';
import './App.css';
import Join from './components/user/Join';
import Login from './components/user/Login';
import VideoConferenceContainer from './container/VideoConferenceContainer';
import ApplyingPage from './pages/ApplyingPage';
import MainPage from './pages/MainPage';
import MyPage from './pages/MyPage';
import ReservationContainer from './container/ReservationContainer';
import BannerPage from './pages/BannerPage';
function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Login></Login>}></Route>
        <Route path='/index' element={<MainPage></MainPage>}></Route>
        <Route path='/join' element={<Join></Join>}></Route>
        <Route path='/banner/*' element={<BannerPage></BannerPage>}></Route>
        <Route path='/meeting' element={<VideoConferenceContainer></VideoConferenceContainer>}></Route>
      </Routes>
      
      {/* <ReservationContainer></ReservationContainer> */}
    </div>
  );
}

export default App;
