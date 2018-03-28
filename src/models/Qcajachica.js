const mysql = require('promise-mysql')


//Connexion a la base de datos
//---------------------------------------------


var connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'cajachica',
    connectionLimit: 10
})



let dataModel = {}
///proveedores/areas/metas
//---------------------------------------------
dataModel.getData = (cb) => {
    let allData = []
    connection.query('SELECT * FROM  proveedor_trabajdor ORDER BY id_prove_trab')
        .then(r1 => {
            allData.push(r1)
            let query2 = connection.query('SELECT * FROM  area_laboral ORDER BY id_area')
            return query2
        }).then(r2 => {
            allData.push(r2)
            let query3 = connection.query('SELECT * FROM meta ORDER BY id_meta')
            return query3
        }).then(r3 => {
            allData.push(r3)
            cb(null, allData)
        }).catch(err => {
            console.log(`Error generado: ${err}`)
        })
}


//Insertando nuevo Trabajador/proveedor
//---------------------------------------------

dataModel.insertProveedor = (nombre, cb) => {
    connection.query('INSERT INTO proveedor_trabajdor  SET ?', [nombre])
        .then(r1 => {
            cb(null, { insertId: r1.insertId })
        }).catch(err => {
            console.log(`Error generado: ${err}`)
        })

}

//Crear un nuevo reporte
//---------------------------------------------


dataModel.insertReporte = (data, cb) => {
    connection.query('INSERT INTO reporte SET ?', [data])
        .then(r1 => {
            cb(null, { insertId: r1.insertId })
        }).catch(err => {
            console.log(`Error generado: ${err}`)
        })
}


//Mostrar todos los Reportes
//---------------------------------------------

dataModel.getReporte = (cb) => {
    connection.query(
        `SELECT  
            r.id_reporte,
            r.fecha,
            r.clase,
            r.dni_ruc,
            pt.nombre proveedor_trabajador,
            r.detalle_gasto,
            r.importe,
            r.programa,
            a.nombre_area area_Laboral,
            m.nombre meta
            FROM reporte r 
             INNER JOIN meta m ON m.id_meta = r.meta_id
             INNER JOIN area_laboral a ON a.id_area = r.area_laboral_id
             INNER JOIN proveedor_trabajdor pt ON pt.id_prove_trab = r.proveedor_trabajador_id
             ORDER BY r.id_reporte
             `)
        .then(r1 => {
            cb(null, r1)
        }).catch(err => {
            console.log(`Error generado: ${err}`)
        })
}

//---------------------------------------------

module.exports = dataModel