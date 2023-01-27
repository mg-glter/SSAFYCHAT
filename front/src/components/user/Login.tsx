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
                
            </div>
            <div className="text_text">
                <Text item={props.item}></Text>
            </div>
        </div>
    )
}

function Login(props: any){
    return(
        <div className="login_contain">
            <form className="login_text_box">
                <TextBox item="id"></TextBox>
                <TextBox item="pwd"></TextBox>
            </form>
        </div>
    )
}

export default Login;