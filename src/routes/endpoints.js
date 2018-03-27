const User =  require('../models/queries')

module.exports = function(app){


//Mostrar todos combobox
//---------------------------------------------
    app.get('/dropdowns',(req,res)=>{
        User.getData((err,data)=>{
            res.status(200).json(data)
        })
  
    })
//Mostrar todos los reportes
//---------------------------------------------
    app.get('/reporte',(req,res)=>{
        User.getReporte((err,data)=>{
            res.status(200).json(data)
        })
    })

    //Guardar solo proveedores
    //---------------------------------------------
    app.post('/addpro',(req,res)=>{
        const userData = {
            id_prove_trab:null,
            nombre:req.body.nombre,
        }

         User.insertProveedor(userData,(err,data)=>{
            if(data && data.insertId){
                console.log(data)
                res.status(200).json({
                    success:true,
                    msg:'dato insertado',
                    data:data
                })
            }else{
              res.status(500).json({
                  success:false,
                  msg:"ERROR"
              })
            }
        })
    })

    //Insert Nuevo reporte
    //---------------------------------------------

    app.post('/reporte',(req,res)=>{
        const reportData = {
            id_reporte:null,
            fecha:req.body.fecha,
            clase:req.body.clase,
            dni_ruc:req.body.dni,
            proveedor_trabajador_id:req.body.proveedor,
            detalle_gasto:req.body.detalle,
            importe:req.body.importe,
            partidas:req.body.partidas,
            programa:req.body.programa,
            area_laboral_id:req.body.area,
            meta_id:req.body.meta

        }

        User.insertReporte(reportData,(err,data)=>{
            if(data && data.insertId){
                res.status(200).json({
                    success:true,
                    msg:'reporte insertado',
                    data:data
                })
            }else{
                res.status(500).json({
                    success:false,
                    msg:'ERROR'
                })
            }
        })
    })

    //---------------------------------------------

}

