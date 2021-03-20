const express = require("express")
const app = express()
const port = 8888
const line = require('@line/bot-sdk')
const { text } = require("express")

const config = {
    channelAccessToken: '4W5bMl4rSidUBjRxhimTbwhq2ccFF9AK12kK/jnazq/qrwQYQp4C+os03YHr1t7eMOrUPBrp1yiuhNgJCMKrNsMxwB5kl+pzVSQlXvCyTImHrCJvE5DUq5v2bBvxbUmaAxFmYW0XFqXeQWzdO28o+gdB04t89/1O/w1cDnyilFU=',
    channelSecret: 'b6c2b7f3c4f8e320befbd94dc34c05d7',
}


// 8888番ポートでlisten
app.listen(port, () => {
    console.log("Node.js app listening at http://localhost:" + port)
    
})
const client = new line.Client(config)


//後者でjsonがパース(jsとして使いこなす)として読み込む
const handleEvent =async (event)=>{
    if(event.type!=='message' || event.message.type!=='text'){  //後者がtextなのかimageなのか判断する
        return null;
    }else {
        fact=search(event.message.text);       
    } 
 
    //返信内容
    await client.replyMessage(event.replyToken,{
        type: 'text',
        text: fact,
    })
}

//検索する関数
function search(word){      
    let userData = [
        ['設定値', 'desired value'],
        ['斜めの角度', 'slanting angle'],
        ['一万', 'ten thousand'],
        ['絶対温度', 'absolute temperature'],
        ['呼吸', 'absorption'],
        ['精度', 'accuracy'],
        ['調整', 'adjusting'],
        ['アルコール', 'alcohol'],
        ['合金', 'alloy'],
        ['アルミニウム', 'aluminum'],
        ['空冷エンジン', 'air-cooled engine'],
        ['アルカリ', 'alkali'],
            
    ];
    for (var j=0; j<=1; j++){              
        for(var i=0; i<userData.length; i++){
            //console.log(userData[i][j]);
            if(userData[i][j]==word  && j==0){
                return (userData[i][j+1]);
            }else if(userData[i][j]==word && j==1){
                
                return (userData[i][j-1]);
            }else{
            }
        }
    }
    if(word=='今から調べたい単語を入力します'){
        return '了解です!!!';
    }
    return 'すみません，その単語の意味はわかりません';
}

// webhook設定
app.post('/webhook', line.middleware(config), (req, res) => {
    const events = req.body.events
    console.log(events)
    //res.sendStatus(200);
    events.map(handleEvent) // 追記
})