const express = require('express');
const router = express.Router();
const multer = require('multer');
const config = {dest: './public/tmp'}
const upload = multer(config);
const model = require('../../models/libros');
const service = require('../../services/libros');


const all = async(req,res) => {
    var status = true;
    const libros = await model.get(status);
    res.render('libros', {libros, status});
}

const allFalse = async (req,res) => {
    var status = false;
    const libros = await model.get(status);
    res.render('libros', {libros, status});
}

const single = async(req,res) =>{
    const id = req.params.id;
    const libro = await model.single(id);
    res.render('libro',{libro});
}

const create = async(req,res) => {
  const idFile = await service.createLibro(req.body, req.file);
  res.redirect('/admin/libros');
}

const getCreate = (req,res) =>{
    res.render('AgregarLibro');
}

const getUpdate = async(req,res) =>{
    const id =  req.params.id;
    const libro = await model.single(id);
    res.render('ModificarLibro', {libro});
}

const update = async (req, res) => {
    const id =  req.params.id;
    const libmodif = req.body;
    console.log(libmodif);
    const modificar = await model.update(id, libmodif);
    res.redirect('/admin/libros');
}

const habilitar = async (req,res) => {
    const status = true;
    const id =  req.params.id;
    const borrado = await model.borrar(id, status);
    res.redirect('/admin/libros');
}

const borrar = async (req,res) => {
    const status = false;
    const id =  req.params.id;
    const borrado = await model.borrar(id, status);
    res.redirect('/admin/libros');
}

router.get('/', all);
router.get('/single/:id', single);
router.get('/create', (req,res) => res.render("AgregarLibro"));
router.post('/create',upload.single("imagen"),create);
router.get('/create', getCreate);
router.get('/update/:id', getUpdate);
router.post('/update/:id', update);
router.get('/delete/:id', borrar);
router.get('/disabled', allFalse);
router.get('/disabled/:id', habilitar);
module.exports = router