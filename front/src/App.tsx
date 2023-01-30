import {Route, Routes} from 'react-router-dom';
import './App.css';
import Join from './components/user/Join';
import Login from './components/user/Login';
import MainPage from './pages/MainPage';

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Login></Login>}></Route>
        <Route path='/index' element={<MainPage></MainPage>}></Route>
        <Route path='/join' element={<Join></Join>}></Route>
      </Routes>
    </div>
  );
}

export default App;
