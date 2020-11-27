// var mysql = require('mysql');
// var connection = mysql.createConnection({
//   host: 'localhost',
//   user: 'root',
//   password: '',
//   database: 'mike'
// });
// connection.connect();

// console.log('Connected!');

// connection.end();


// ------------------------------------------------------------
//      my sql connection
// ------------------------------------------------------------
// var mysql = require('mysql');

// // //DBの定義
// var dbConfig = {
//   host     : 'localhost', //接続先ホスト
//   user     : 'root',      //ユーザー名
//   password : '',    //パスワード
//   database : 'mike'  //DB名
// };


// connection = mysql.createConnection(dbConfig);
// console.log('create mysql connection');
// console.log(connection);

// function handleDisconnect() {
//     console.log('create mysql connection');
//     connection = mysql.createConnection(dbConfig); //接続する準備

//     //接続
//     connection.connect(function(err) {
//         if(err) {
//             console.log('error when connecting to db:', err);
//             setTimeout(handleDisconnect, 2000); //2秒待ってから処理
//         }
//     });

//     //error時の処理
//     connection.on('error', function(err) {
//         console.log('db error', err);
//         if(err.code === 'PROTOCOL_CONNECTION_LOST') {
//             handleDisconnect();
//         } else {
//             throw err;
//         }
//     });

//     module.exports = connection; //connectionを(他のファイルから)requireで呼び出せるようにする
// }

// handleDisconnect();

const express = require('express');
const mysql = require('mysql');

const app = express();

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'mike_development'
});

connection.connect((err) => {
  if (err) {
    console.log('error connecting: ' + err.stack);
    return;
  }
  console.log(connection);
});

// app.get('/', (req, res) => {
//   connection.query(
//     'SELECT * FROM users',
//     (error, results) => {
//       console.log(results);
//       // res.render('index.html.haml');
//     }
//   );
// });

app.listen(3000);