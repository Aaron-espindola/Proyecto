const express = require('express');
const router = express.Router();
const model = require('../../models/empleados');


const all = async(req, res) =>{
    var status = true;
    const empleados = await model.get(status);
    res.render('empleados',{empleados, status});
}

const allFalse = async(req,res) => {
    var status = false;
    const empleados = await model.get(status);
    res.render('empleados',{empleados, status});
}

const single = async (req,res) => {
    const id =  req.params.id;
    const empleado = await model.single(id);
    res.render('empleado', {empleado});
}

const create = async(req,res) =>{
    const obj = req.body;
    console.log(obj);
    const nuevoUsuario = await model.create(obj);
    res.redirect('/admin/empleados');
}

const getCreate = (req,res) =>{
    res.render('agregarEmpleado');

}

const getUpdate = async(req,res) =>{
    const id =  req.params.id;
    const usuario = await model.single(id);
    res.render('ModificarEmpleado', {usuario});
}

const update = async (req, res) => {
    const id =  req.params.id;
    const usermodif = req.body;
    console.log(usermodif);
    const modificar = await model.update(id, usermodif);
    res.redirect('/admin/empleados');
}

const borrar = async (req,res) => {
    const status = false;
    const id =  req.params.id;
    const borrado = await model.borrar(id, status);
    res.redirect('/admin/empleados');
}

const habilitar = async (req,res) => {
    const status = true;
    const id =  req.params.id;
    const borrado = await model.borrar(id, status);
    res.redirect('/admin/empleados');
}

router.get('/', all);
router.get('/single/:id', single);
router.post('/create', create);
router.get('/create', getCreate);
router.get('/update/:id', getUpdate);
router.post('/update/:id', update);
router.get('/delete/:id', borrar);
router.get('/disabled', allFalse);
router.get('/disabled/:id', habilitar);

module.exports = router;