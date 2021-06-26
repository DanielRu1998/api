const mysql = require('mysql');

/****OJO, los datos de conexion son acorde a los proporcionados en las especificaciones del problema */
/**Los datos que use fueron en localhost, pero dejare los que vienen en las especificaciones */
const mysqlConnection = mysql.createConnection({
    host: 'data-avimo.cgriqmyweq5c.us-east-2.rds.amazonaws.com',
    user: 'testing',
    password: 'Pruebas%ALI%2020',
    database: 'testing_ali_fullstack'
});

mysqlConnection.connect(function (err) {
    if(err){
        console.log(err);
        return;
    }else{
        console.log('Base de datos conectada');
    }
});

module.exports = mysqlConnection;