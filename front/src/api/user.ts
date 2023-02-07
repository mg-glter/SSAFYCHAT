import { localServer } from "./http";

const api = localServer();

async function login(user, success, fail) {
    await api.post('/login', JSON.stringify(user)).then(success).catch(fail);
}

export {login};