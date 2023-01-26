import "../styles/components/header.css"

function Header (){
    return (
        <div className="header">
            <div className="header_name">SSAFY CHAT</div>
            <nav className="navbar">
              <span><a>Home</a></span>
              <span><a>Mentoring</a></span>
              <span>
                <div className="dropdown">
                  <span className="dropbtn"> 
                  <span className="dropbtn_image"></span>
                    김겨울 님
                  <span className="dropbtn_icon"></span>
                  </span>
                  <div className="dropdown_content">
                    <a href="#">profile</a>
                    <a href="#">write a post</a>
                    <a href="#">settings</a>
                  </div>
                </div>
              </span>
            </nav>
        </div>
    )
}

export default Header