import { localServer } from "./http";

const api = localServer();

async function login(user:any, success:any, fail:any) {
    await api.post('/login', JSON.stringify(user)).then(success).catch(fail);
}

export {login};