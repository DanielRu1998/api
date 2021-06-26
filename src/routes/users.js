const express = require('express');
const router = express.Router();

const mysqlConnection = require('../database');

//Recibiendo datos del front y utilizando procedimientos almecenados
router.post('/', (req, res) => {
    const { nombre, fecha_n, contacto } = req.body;
    const query = `
        CALL addUser(?, ?, ?, ?, ?, ?, ?);
    `;
    mysqlConnection.query(query, [
        nombre.nombre_f,
        nombre.nombre_s,
        nombre.apellido_p,
        nombre.apellido_m,
        fecha_n,
        contacto.correo,
        contacto.telefono
    ], (err, rows, fields) => {
        if(!err){
            res.json({Status: '¡Usuario agregado con éxito!'});
        }else{
            console.log(err);
        }
    });
});

module.exports = router;