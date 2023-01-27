import React from 'react';
import logo from './logo.svg';
import './App.css';
import Header from './layout/Header';
import Banner from './components/common/Banner';
import ReservationPage from './pages/ReservationPage';
function App() {
  return (
    <div className="App">
      <Header></Header>
      <Banner name="마이페이지" imgName="banner1"></Banner>
      <ReservationPage></ReservationPage>
    </div>
  );
}

export default App;
