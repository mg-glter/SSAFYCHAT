import "../../styles/components/common/login.css";

function Icon(props: any){
    const email_shape = "/img/email_shape.png";
    const lock_shape = "img/lock_shape.png";
    switch (props.item){
        case 'id':
            return <div className="icon" id="email">
                <img src={email_shape} alt="email_icon" />
            </div>
        case 'pwd':
            return <div className="icon" id="lock">
                <img src={lock_shape} alt="lcok_icon" />
            </div>
        default:
            return null;
    }
}
function Text(props: any){
    switch (props.item){
        case 'id':
            return <input className="input_text" type="text" name="id" id="id" />
        case 'pwd':
            return <input className="input_text" type="password" name="pwd" id="pwd" />
        default:
            return null;
    }
}

function TextBox(props : any){
    return(
        <div className="text_box">
            <div className="text_icon">
                <Icon item={props.item}></Icon>
            </div>
            <div className="text_text">
                <Text item={props.item}></Text>
            </div>
        </div>
    )
}

function Login(props: any){
    const imgUrlGithub = "/img/Github.png"
    const imgUrlGoogle = "/img/Google.png"
    const imgUrlkakao = "/img/kakao.png"
    return(
        <div className="login_container">
            <div className="login_logo_name">SSAFY CHAT</div>
            <div>
                <div className="nomal_login">
                    <form className="login_text_box">
                        {/* 로그인 입력 박스 두개 */}
                        <TextBox item="id"></TextBox>
                        <TextBox item="pwd"></TextBox>
                        {/* 아이디 기억 */}
                        <div className="b_side">
                            <div className="save_id">
                                <input type="checkbox" name="save_id" id="save_id" />
                                Remember Me
                            </div>
                            {/* 아이디 비밀번호 찾기 */}
                            <a className="find_pwd" href="#!">Forgot ID or Password?</a>
                        </div>
                        {/* 로그인 버튼 */}
                        <input className="submit_btn_in" type="submit" value="Sign In" />
                        <hr />
                        {/* 회원가입 버튼 */}
                        <button className="submit_btn_up" type="submit">Sing Up</button>
                    </form>
                </div>
            </div>
            <div className="sns_login_contain">
                <div className="github">
                    <img src={imgUrlGithub} alt="Github" />
                </div>
                <div className="kakao">
                    <img src={imgUrlGoogle} alt="Google" />
                </div>
                <div className="google">
                    <img src={imgUrlkakao} alt="kakao" />
                </div>
            </div>
            <div className="login_footer">
                <p className="footer_text">ⓣTeam BlueBerryPie. All rights reserved.</p>
            </div>
        </div>
    )
}

export default Login;