function CountBanner(props: any) {
    const count_banner_style = {
        position: "absolute",
        width: "1920px",
        height: "300px",
        left: "calc(50% - 1920px/2)",
        // top: "2377px",
        background: "#D9D9D9",
    } as React.CSSProperties;

    const count_main_style = {
        display: "flex",
        flexDirection: "row",
        justifyContent: "flex-evenly",
        padding: "0px",
        // gap: "76px",

        position: "relative",
        width: "1084.82px",
        height: "150.59px",
        left: "408.09px",
        alignItems: "center",
    } as React.CSSProperties;

    const count_style = {
        // display: "flex",
        width: "246px",
        height: "155px",
    } as React.CSSProperties;

    const count_text = {
        display: "flex",
        alignItems: "center",
        padding: "0px",

        // position: "relative",
        width: "192px",
        height: "155px",
        left: "146.41px",
        // top: "0px",
    } as React.CSSProperties;

    const count_text_num = {
        width: "77px",
        height: "106px",
        fontFamily: "DM Serif Display",
        fontStyle: "normal",
        fontWeight: "400",
        fontSize: "85px",

        display: "flex",
        // flexDirection: "row",
        alignItems: "center",
        letterSpacing: "0.02em",

        color: "#0D0D0D",
    } as React.CSSProperties;

    const count_text_name = {
        width: "150px",
        height: "33px",
        fontFamily: "Jost",
        fontStyle: "normal",
        fontWeight: "400",
        fontSize: "22px",

        display: "flex",
        alignItems: "center",
        letterSpacing: "0.01em",

        color: "#031059",
    } as React.CSSProperties;

    const count_line = {
        display: "flex",
        position: "relative",
        width: "130px",
        // height: "0px",
        left: "200px",
        // top: "80px",

        border: "1px solid #0D0D0D",
        transform: "rotate(90deg)",
    } as React.CSSProperties;
    
    return (
    <div className="count_banner" style={count_banner_style}>
        <span className="count_main" style={count_main_style}>
            {props.name.map(function(nameItem:any){
                return(
                    <span className="count" style={count_style}>
                        <div className="count_text" style={count_text}>
                            <ul>
                                <li style={count_text_num}><p>{nameItem[1]}</p></li>
                                <li style={count_text_name}><p>{nameItem[0]}</p></li>
                            </ul>
                        </div>
                        <div className="count_line" style={count_line}></div>
                    </span>
                )
            })}
        </span>
    </div>
    )
}

export default CountBanner;