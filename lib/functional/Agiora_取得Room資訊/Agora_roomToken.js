var uuid = "放生成的UUID的地方";
var url = "https://api.netless.link/v5/tokens/rooms/" + uuid; 
var requestInit = {
  method: "POST",
  headers: {
    "content-type": "application/json",
    region: "cn-hz", // 指定处理该请求的白板数据中心，此处选的是杭州
    token: "放帳戶專案SDK Token的地啷", // 签发的 SDK Token，需提前准备
  },
  body: JSON.stringify({
  
  	"lifespan":0, //表明room Token永不失效
  	"role":"admin", //表明Room Token有admin權限
  
  }),
};

window
  .fetch(url, requestInit)
  .then(function (response) {
    return response.json();
  })
  .then(function (roomToken) {
    // 创建房间成功，获取描述房间Room Token
    console.log(roomToken);
  })
  .catch(function (err) {
    // 失败了，打印出 Error 以便分析为何失败
    console.error(err);
  });

