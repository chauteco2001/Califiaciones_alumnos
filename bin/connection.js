
const mysql = require('mysql');

const connection = mysql.createConnection({
    host : 'localhost',
    database : 'ddi_final_juanDiego_roberto',
    user : 'root',
    password : ''
});

connection.connect(function(error){
    if(error)
    {
        throw error;
    }
    else
    {
        console.log('MySQL Database is connected Successfully');
    }
});

module.exports = connection;

