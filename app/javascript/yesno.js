var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'mike'
});
connection.connect();

console.log('Connected!');

connection.end();