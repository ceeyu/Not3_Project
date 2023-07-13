var url = "https://api.netless.link/v5/rooms";
var requestInit = {
  method: "POST",
  headers: {
    "content-type": "application/json",
    region: "cn-hz", // 指定处理该请求的白板数据中心，此处选的是杭州
    token: "NETLESSSDK_YWs9VThHRlBFZ0pDb2lBbEJPaCZub25jZT1hNmM1MDZkMC0yMTI5LTExZWUtOTUxYi04Nzk4ZTEyMzFjOWImcm9sZT0wJnNpZz1hOTQyNmRlYzU4NWQ2MzFiYmU0Y2E0ZGMxM2U4ZTNlY2ViYWExMjgxZGEwODEzMGQzM2VmYjc3Y2RhMTIyMTZj", // 签发的 SDK Token，需提前准备
  },
};

window
  .fetch(url, requestInit)
  .then(function (response) {
    return response.json();
  })
  .then(function (roomJSON) {
    // 创建房间成功，获取描述房间信息的 roomJSON
    console.log(roomJSON);
  })
  .catch(function (err) {
    // 失败了，打印出 Error 以便分析为何失败
    console.error(err);
  });

