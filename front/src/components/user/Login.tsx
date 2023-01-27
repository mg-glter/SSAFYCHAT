function Icon(props: any){
    return(
        <div></div>
    )
}
function Text(props: any){
    switch (props.item){
        case 'id':
            return <input type="text" name="id" id="id" />
        case 'pwd':
            return <input type="password" name="pwd" id="pwd" />
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
        <div className="login_contain">
            <div className="login_logo_name">SSAFY CHAT</div>
            <div>
                {/* 로그인 입력 박스 두개 */}
                <form className="login_text_box">
                    <div>
                        <TextBox item="id"></TextBox>
                        <TextBox item="pwd"></TextBox>
                    </div>
                    {/* 아이디 기억 */}
                    <div>
                        <input type="checkbox" name="save_id" id="save_id" />
                        Remember Me
                    </div>
                    {/* 아이디 비밀번호 찾기 */}
                    <div><a href="#">Forgot ID or Password?</a></div>
                    {/* 로그인 버튼 */}
                    <input type="submit" value="Sign In" />
                </form>
            </div>
            <hr />
            {/* 회원가입 버튼 */}
            <div>
                <button type="submit">Sing Up</button>
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