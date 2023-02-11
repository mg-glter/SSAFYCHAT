import { localServer } from "./http";

const api = localServer();

// param, success, fail 을 받아 함수 호출
async function getReview(success : any, fail : any){
    api.defaults.headers["Authorization"] = "Bearer " + sessionStorage.getItem("refresh-token");
    await api.get(`/mentoring/review`)
    .then(success)
    .catch(fail);
}

export {getReview,};