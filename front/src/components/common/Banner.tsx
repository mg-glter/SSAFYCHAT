function Banner(props: any) {
    const banner_main_style = {
        position: "absolute",
        width: "1920px",
        height: "200px",
        left: "calc(50% - 1923px/2 + 1.5px)",
        top: "100px",
        backgroundImage: `url(${process.env.PUBLIC_URL}/img/${props.imgName}.png)`,
    } as React.CSSProperties;
    
    const banner_name_main_style = {
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        // padding: "41px 136px 74px",
        gap: "10px",
        position: "relative",
        width: "500px",
        height: "100px",
        left: "calc(50% - 504px/2 - 1px)",
        top: "100px",
        background: "#FFFFFF",
        borderRadius: "37px 37px 0px 0px",
    } as React.CSSProperties;

    const banner_name_style = {
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        padding: "0px",
        width: "232px",
        height: "50px",
        flex: "none",
        order: "0",
        flexGrow: "0",
    } as React.CSSProperties

    const banner_title = {
        width: "184px",
        height: "50px",
        fontFamily: "DM Serif Display",
        fontStyle: "normal",
        fontWeight: "400",
        lineHeight: "300%",
        // display: "flex",
        // alignItems: "center",
        // textAlign: "center",
        color: "#0D0D0D",
        flex: "none",
        order: "0",
        flexGrow: "0",
    } as React.CSSProperties;

    return (
    <div className="banner_main" style={banner_main_style}>
        <div className="banner_name_main" style={banner_name_main_style}>
            <div className="banner_name" style={banner_name_style}>
                <h2 style={banner_title}>{props.name}</h2>
            </div>
        </div>
    </div>
    )
}

export default Banner;