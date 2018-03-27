const express = require('express')
const app = express();

const morgan  = require('morgan')
const bodyParser  = require('body-parser')

app.use(morgan('dev'))
app.use(bodyParser.json())

//personalizar puerto
const port =  process.env.PORT || 3000

//rutas
require('./src/routes/endpoints')(app)

app.listen(port,()=>{
    console.log(`corriendo en el puerto ${port}`)
})