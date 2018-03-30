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
    connection.query('SELECT * FROM  proveedor ORDER BY id_proveedor')
        .then(r1 => {
            allData.push(r1)
            let query2 = connection.query('SELECT * FROM  area ORDER BY id_area')
            return query2
        }).then(r2 => {
            allData.push(r2)
            let query3 = connection.query('SELECT * FROM meta ORDER BY id_meta')
            return query3
        }).then(r3 => {
            allData.push(r3)
           let query4  = connection.query('SELECT * FROM clase ORDER BY id_clase')
           return query4
        }).then(r4=>{
            allData.push(r4)
            let query5 = connection.query('SELECT * FROM partida ORDER BY id_partida')
            return query5
        }).then(r5=>{
            allData.push(r5)
            let query6  = connection.query('SELECT * FROM programa ORDER BY id_programa')
            return query6
        }).then(r6=>{
            allData.push(r6)
            cb(null,allData)
        }).catch(err => {
            console.log(`Error generado: ${err}`)
        })
}


//Insertando nuevo Trabajador/proveedor
//---------------------------------------------

dataModel.insertProveedor = (desc_proveedor, cb) => {
    connection.query('INSERT INTO proveedor  SET ?', [desc_proveedor])
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
            cl.concepto_gasto clase,
            r.dni_ruc,
            pt.desc_proveedor proveedor,
            r.detalle_gasto,
            r.importe,
            par.desc_partida partida,
            pro.desc_programa programa,
            a.desc_area area,
            m.desc_meta area
            FROM reporte r 
             INNER JOIN meta m ON m.id_meta = r.meta_id
             INNER JOIN area a ON a.id_area = r.area_id
             INNER JOIN proveedor pt ON pt.id_proveedor = r.proveedor_id
             INNER JOIN partida par ON par.id_partida = r.partida_id
             INNER JOIN programa pro ON pro.id_programa = r.programa_id
             INNER JOIN clase cl ON cl.id_clase  = r.clase_id
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