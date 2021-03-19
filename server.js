const express = require("express")
const app = express()
const port = 8888
const line = require('@line/bot-sdk')

const config = {
    channelAccessToken: '4W5bMl4rSidUBjRxhimTbwhq2ccFF9AK12kK/jnazq/qrwQYQp4C+os03YHr1t7eMOrUPBrp1yiuhNgJCMKrNsMxwB5kl+pzVSQlXvCyTImHrCJvE5DUq5v2bBvxbUmaAxFmYW0XFqXeQWzdO28o+gdB04t89/1O/w1cDnyilFU=',
    channelSecret: 'b6c2b7f3c4f8e320befbd94dc34c05d7',
}

let text = '';

// 定数
const BUFF_SIZE = 100;    // バッファーのサイズ
const BUFF_POS  = 0;      // バッファーの保存開始位置
const READ_SIZE = 3;      // 読み取るサイズ
const READ_POS  = 0;      // 読み取り開始位置

// モジュール
var fs = require("fs");

fs.readFile("/Users/suzukamayo/mylinebot/word.js","utf8",(error,data)=>{
    if (error) {
        return;
      }
      console.log(data);
});

// 8888番ポートでlisten
app.listen(port, () => {
    console.log("Node.js app listening at http://localhost:" + port)
    
})
const client = new line.Client(config)

//後者でjsonがパース(jsとして使いこなす)として読み込む
const handleEvent =async (event)=>{
    if(event.type!=='message' || event.message.type!=='text'){  //後者がtextなのかimageなのか判断する
        return null;
    }else{
        if('りんご'=='text'){
            text='ok!';
        }else{
            text='NG';
        }
    }
 
    //返信内容
    await client.replyMessage(event.replyToken,{
        type: 'text',
        text: text,
    })

}

// webhook設定
app.post('/webhook', line.middleware(config), (req, res) => {
    const events = req.body.events
    console.log(events)
    //res.sendStatus(200);
    events.map(handleEvent) // 追記
})
  