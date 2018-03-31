const Query = require('../models/Qcajachica')

module.exports = function (app) {

    app.get('/',(req,res)=>{
        res.send("Api Run")
    })


    //Mostrar todos combobox
    //---------------------------------------------
    app.get('/api/dropdowns', (req, res) => {
        Query.getData((err, data) => {
            res.status(200).json(data)
        })
    })
    //Mostrar todos los reportes
    //---------------------------------------------
    app.get('/api/reporte', (req, res) => {
        Query.getReporte((err, data) => {
            res.status(200).json(data)
        })
    })

    //Guardar solo proveedores
    //---------------------------------------------
    app.post('/api/addproveedor', (req, res) => {
        const proveData = {
            id_prove_trab: null,
            desc_proveedor: req.body.proveedor,
        }

        Query.insertProveedor(proveData, (err, data) => {
            if (data && data.insertId) {
                console.log(data)
                res.status(200).json({
                    success: true,
                    msg: 'dato insertado',
                    data: data
                })
            } else {
                res.status(500).json({
                    success: false,
                    msg: "ERROR"
                })
            }
        })
    })

    //Insert Nuevo reporte
    //---------------------------------------------

    app.post('/api/reporte', (req, res) => {
        const reportData = {
            id_reporte: null,
            fecha: req.body.fecha,
            clase_id: req.body.clase,
            numero:req.body.numero,
            dni_ruc: req.body.dni,
            proveedor_id: req.body.proveedor,
            concepto_id:req.body.concepto,
            detalle_gasto: req.body.detalle,
            importe: req.body.importe,
            partida_id: req.body.partida,
            programa_id: req.body.programa,
            area_id: req.body.area,
            meta_id: req.body.meta
        }

        Query.insertReporte(reportData, (err, data) => {
            if (data && data.insertId) {
                res.status(200).json({
                    success: true,
                    msg: 'reporte insertado',
                    data: data
                })
            } else {
                res.status(500).json({
                    success: false,
                    msg: 'ERROR'
                })
            }
        })
    })

    //---------------------------------------------

    //SELECT  X FECHAS
    app.get('/api/fecha/:d1/:d2',(req,res)=>{

        const date ={
            d1:req.params.d1,
            d2:req.params.d2
        }
        Query.reportesFecha(date,(err,data)=>{
            res.status(200).json(data)
        })
    })
}

