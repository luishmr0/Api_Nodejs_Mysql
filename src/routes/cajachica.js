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
            id_proveedor: null,
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
            presupuesto:req.body.presupuesto,
            fecha_doc:req.body.fecha_doc,
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

//REGISTRAR USUARIOS
app.post('/api/user',(req,res)=>{
    const usuario = {
        nombre:req.body.nombre,
        apellido:req.body.apellido,
        usuario:req.body.usuario,
        password:req.body.password,
        privilegio:req.body.privilegio,
        estado:req.body.estado
    }

    Query.insertUser(usuario,(err,data)=>{
        if (data && data.insertId) {
            console.log(data)
            res.status(200).json({
                success: true,
                msg: 'Usuario Registrado',
                data: data
            })
        } else {
            res.status(500).json({
                success: false,
                msg: "ERROR no se pudo registrar Usuario"
            })
        }
    })

})

//MOSTRAR USUARIOS

app.get('/api/users',(req,res)=>{

    Query.getUsers((err,data)=>{
        res.status(200).json(data)
    })
})

//validar users
app.post('/api/login',(req,res)=>{

    user ={
        usuario:req.body.usuario,
        password:req.body.password       
    }
    Query.verifica(user,(err,data)=>{
     
           res.status(200).json(data)
       
    })
})

// actualizar usuarios
app.put('/api/userupdate/:id',(req,res)=>{
    const user = {
        id:req.params.id,
        usuario:req.body.usuario,
        password:req.body.password,
        nombre:req.body.nombre,
        apellido:req.body.apellido,
        privilegio:req.body.privilegio,
        estado:req.body.estado
    }

    Query.userupdate(user,(err,data)=>{
        if(data && data.msg){
            res.status(200).json({data})
        }else{
            res.status(500).json({
                success:false,
                msg:"Error"
            })
        }
    })
})


}

