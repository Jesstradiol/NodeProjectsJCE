
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost', 
  user     : 'root', 
  password : '', 
  database : 'isoftdataprojectelsener' 
});
 
connection.connect(function(err) {
  if (err) throw err
  console.log('You are now connected...')
})


var express = require('express');
var app = express();

// Binding express app to port 3000
app.listen(3000,function(){
    console.log('Node server running @ http://localhost:3000')
});


app.use('/node_modules',  express.static(__dirname + '/node_modules'));

app.use('/style',  express.static(__dirname + '/Style'));


app.get('/',function(req,res){
    res.sendFile('home.html',{'root': __dirname + '/Templates'});
})

app.get('/showSignInPage',function(req,res){
    res.sendFile('signin.html',{'root': __dirname + '/Templates'});
})

app.get('/showSignUpPage',function(req,res){
  res.sendFile('signup.html',{'root':__dirname + '/Templates'})
})

connection.end();