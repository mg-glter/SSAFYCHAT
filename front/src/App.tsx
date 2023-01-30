import React from 'react';
import './App.css';
// import Header from './layout/Header';
// import Banner from './components/common/Banner';
// import ReservationPage from './pages/ReservationPage';
import Login from './components/user/Login';
function App() {
  return (
    <div className="App">
      {/* <Header></Header>
      <Banner name="마이페이지" imgName="banner1"></Banner>
      <ReservationPage></ReservationPage> */}
      <Login></Login>
    </div>
  );
}

export default App;
