const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',       
    user: 'root',            
    password: 'Surya@123',           
    database: 'website',     
});

connection.connect((err) => {
    if (err) {
        console.error('Database connection failed:', err.stack);
        process.exit(1); 
    }
    console.log('Connected to MySQL database.');
});

module.exports = connection;
