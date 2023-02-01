import "../styles/container/video-conference-container.css"


function VideoConferenceContainer(props : any){

    return(
        // 회의 컨테이너 전체를 담는 컨테이너
        <div className="video_conference_container">

            {/* webRtc용 임시 입력창 */}
            <div className="vcTmp">
                <form>
                    <input placeholder="nickName"></input><br></br>
                    <input placeholder="roomCode"></input><br></br>
                    <button>입력</button>
                </form>
            </div>


            {/* 비디오 화면과 버튼들을 담을 왼쪽 컨테이너 */}
            <div className="video_conference_left">

                {/* 내 비디오 화면을 담을 컨테이너 */}
                <div className="video_conference_mine">
                    {/* 내 비디오 화면 */}
                    <div className="video_conference_mine_screen">

                    </div>
                </div>

                {/* 상대의 비디오 화면을 담을 컨테이너 */}
                <div className="video_conference_oppnent">
                    {/* 상대의 비디오 화면 */}
                    <div className="video_conference_oppnent_screen">

                    </div>
                </div>

                {/* 각종 버튼을 담는 컨테이너 */}
                <div className="video_conference_footer">
                    <div className="video_conference_button_container">
                        <div className="video_conference_button">
                            <img src="img/camera-on.png" alt="camera"></img>
                            <span>카메라</span>
                            <img src="img/arrow-down.png" alt="arrow-donwn"></img>
                        </div>
                        <div className="video_conference_button">
                            <img src="img/audio-microphone-on.png" alt="mic"></img>
                            <span>마이크</span>
                            <img src="img/arrow-down.png" alt="arrow-donwn"></img>
                        </div>
                        {/* 화면 공유는 구현이 쉽지 않을 것으로 보인다 */}
                        {/* <div className="video_conference_button">
                            <img src="img/share-screen.png" alt="recording"></img>
                            <span></span>
                        </div> */}
                        <div className="video_conference_cancel">
                            <img src="img/cancel.png" alt="recording"></img>
                        </div>
                    </div>
                </div>
            </div>

            {/* 채팅창을 담을 오른쪽 컨테이너 */}
            <div className="video_conference_right">
               
                {/* 채팅 내용을 보여줄 리스트 요소 */}
                <ul className="video_conference_chat_content_ul">
                    <li className="video_conference_chat_content_li">

                    </li> 
                </ul>

                {/*  */}
                <div className="video_conference_chat_container">
                    {/* 채팅 입력 input */}
                    <input className="video_conference_chat_input">

                    </input>
                </div>
            </div>
        </div>
    )
}

export default VideoConferenceContainer;