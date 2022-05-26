const inquirer = require('inquirer');
const mysql = require('mysql2');
const cTable = require('console.table');






//MySQL connect the application to MYSQL database
const db = mysql.createConnection(
    {
      host: "localhost",
      //Your MYSQL username,
      user: "root",
      //Your MYSQL password
      password: process.env.DB_PASSWORD,
      database: "employeeTracker_db",
    },
    console.log("Connected to the emploee-tracker database.")
  );

  db.connect(function(err) {
    if (err) throw err
    console.log("MySQL Connected")
    startApp();  // start the procces
});


const startApp = () => {
    
};