var uuid = "b6091b90212911eead913b9623a97edd";
var url = "https://api.netless.link/v5/tokens/rooms/" + uuid; 
var requestInit = {
  method: "POST",
  headers: {
    "content-type": "application/json",
    region: "cn-hz", // 指定处理该请求的白板数据中心，此处选的是杭州
    token: "NETLESSSDK_YWs9VThHRlBFZ0pDb2lBbEJPaCZub25jZT00ZGY1ZWFlMC0yMTI2LTExZWUtODBlOC05N2I1Y2E0YWVhYTYmcm9sZT0wJnNpZz00YWNjODVkZTNjMDZjNzE4YjUxZjlkMzBmYjNiZmJiY2M4ZWIzNWQ2YTIzZjRhOTU1ODFmYTJlYjVmYzE2ZGVl", // 签发的 SDK Token，需提前准备
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

