import { localServer } from "./http";

const api = localServer();

async function login(user:any, success:any, fail:any) {
    await api.post('/login', JSON.stringify(user)).then(success).catch(fail);
}

async function logout(user: string, success:any, fail:any) {
    api.defaults.headers["Authorization"] = "Bearer " + sessionStorage.getItem("refresh-token");
    await api.post('/logout').then(success).catch(fail);
}

export {login, logout};