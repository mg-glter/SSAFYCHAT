import '../../styles/components/applying/mentoring-search-form.css'
function MentoringSearchForm (){
    return (
        <div>
            <form className='search_form' action="#">
                <div className="search">
                    <div className='search_image'>
                        <img src={require('../../assets/job_input.png')} alt="job" />
                    </div>
                        <input className='search_input' type="text" placeholder="직무" />
                    <div className='search_dropdown'>
                        <div className='search_dropdown_icon'></div>
                    </div>
                </div>
                <div className="search">
                    <div className='search_image'>
                        <img src={require('../../assets/belong_input.png')} alt="belong" />
                    </div>
                    <input className='search_input' type="text" placeholder="회사 이름 검색"/>
                    <div className='search_dropdown'>
                        <input type="image" src={require('../../assets/search_icon.png')} alt="search_icon" />
                    </div>
                </div>
            </form>
        </div>
    )
}

export default MentoringSearchForm