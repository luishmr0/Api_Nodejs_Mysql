const mysql = require('mysql')


//Connexion a la base de datos
//---------------------------------------------


var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'cajachica',

})


let userModel = {}
///proveedores/areas/metas
//---------------------------------------------
userModel.getData = (callback) => {
    var newArray = []
    if (connection) {
        console.log("Conectado")
        connection.query(
            'SELECT * FROM  proveedor_trabajdor ORDER BY id_prove_trab',
            (err, rows) => {
                if (err) {
                    throw err
                } else {
                    newArray.push(rows)
                }

                connection.query(
                    'SELECT * FROM  area_laboral ORDER BY id_area',
                    (err, rows2) => {
                        if (err) {
                            throw err
                        } else {
                            newArray.push(rows2)
                        }

                        connection.query(
                            'SELECT * FROM meta ORDER BY id_meta',
                            (err, rows3) => {

                                if (err) {
                                    throw err
                                } else {

                                    newArray.push(rows3)
                                    callback(null, newArray)

                                }

                            }
                        )
                    }
                )
            }
        )
    }
}






//Insertando nuevo Trabajador/proveedor
//---------------------------------------------
userModel.insertProveedor = (nombre, callback) => {
    if (connection) {
        connection.query(
            'INSERT INTO proveedor_trabajdor  SET ?', nombre,
            (err, result) => {
                if (err) {
                    throw err
                } else {
                    callback(null, {
                        insertId: result.insertId

                    })

                }
            }
        )
    }
}

//Crear un nuevo reporte
//---------------------------------------------
userModel.insertReporte = (data, callback) => {
    if (connection) {
        connection.query(
            'INSERT INTO reporte SET ?', data,
            (err, result) => {
                if (err) {
                    throw err
                } else {
                    callback(null, {
                        insertId: result.insertId
                    })

                }
            }
        )
    }
}





//Mostrar todos los Reportes
//---------------------------------------------
userModel.getReporte = (callback) => {
    if (connection) {
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
             `,
            (err, data) => {
                if (err) {
                    throw err
                } else {
                    callback(null, data)

                }
            }
        )
    }
}
//---------------------------------------------




module.exports = userModel