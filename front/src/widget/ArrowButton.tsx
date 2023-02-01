import "../styles/widget/arrow-button.css"

function ArrowButton(props : any){
    return(
        <div className="reserved_card_list_arrow">
            <div className="arrow_button">
                <div className="arrow">
                    {props.text}
                </div>
            </div>
        </div>    
    )
}

export default ArrowButton;