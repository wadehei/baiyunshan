// 请求node.js自带的HTTP函数
var http = require('http');
var fs = require('fs');
var url = require('url');
var path = require('path');
var html = '<html><head><meta charset="utf-8" /></head>' +
    '<body><h1>Hello Node!</h1></body>' +
    '</html>'
    // HTTP模块提供了createServer函数，这个函数会返回一个对象，我们将返回的对象赋值给server
var server = http.createServer(function(req, res) {
        // _dirname是全局变量。可直接获取，表示当前脚本所在目录
        var staticPath = path.join(__dirname, 'japanese');
        // path.join方法，拼接目录地址
        // staticPath拼接后的目录地址,为了跳转到自己项目所在目录
        // req.url请求的连接,这里是/index.html
        var pathObj = url.parse(req.url, true);
        // url.parse方法，解析请求的url，解决链接“\”和“/”的差异问题
        // 解析后的req.url是个对象
        console.log(pathObj)
            // 从解析后的对象中获取pathname（这里pathObj.pathname是/index.html）
        var filePath = path.join(staticPath, pathObj.pathname);
        // path.join方法，拼接完整项目目录地址
        // fileCOntent拼接后的项目目录名字（这里是C:\Users\DELL\Desktop\mineDemo\server）
        // fs.readFileSync方法，同步读取文件信息
        var fileContent = fs.readFileSync(filePath, 'binary');
        // 读取拼接完成后的目录中的文件 ‘binary’表示二进制方式读取
        res.write(fileContent, 'binary');
        res.end();
    })
    // 该对象有listen方法，可以传参指定服务器端口号
server.listen(8000);
console.log('服务器已打开');