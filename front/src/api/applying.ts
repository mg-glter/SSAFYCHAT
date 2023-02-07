import { localServer } from "./http";

const api = localServer();

async function search(mentoring:any) {
    await api.post(`/mentoring/job/${mentoring.belong}/${mentoring.job}`)
    .then((data)=>{console.log(data);})
    .catch((err)=>{console.log(err);
    });
}

export {search};