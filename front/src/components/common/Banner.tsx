function Banner(props: any){
    return (
    <div className="banner_main">
        <div className="banner_name_main">
            <div className="banner_name">
                <h2>{props.name}</h2>
            </div>
        </div>
    </div>
    )
}

export default Banner;