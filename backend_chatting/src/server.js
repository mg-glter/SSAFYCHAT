import http from "http";
import WebSocket from "ws"; //ws 추가

//ws 통신 대기
function handleConnection(socket) {
    console.log("good");
}
const handleListen = () => console.log(`Listening on http://localhost:8000`);

const server = http.createServer(); 
const wss = new WebSocket.Server({server});
wss.on("connection", handleConnection);

server.listen(8000,handleListen);