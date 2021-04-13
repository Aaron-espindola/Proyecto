const pool = require('./../utils/bd');
const TABLA_LIBROS = "libros";
const TABLA_LIBROS_IMAGENES = "libros_imagenes";


const get = async(habilitados) => {
    try{
    const query = "SELECT l.*, li.uid FROM ?? AS l JOIN ?? AS li ON l.id = li.id_libro WHERE l.habilitados = ?";
    const params = [TABLA_LIBROS, TABLA_LIBROS_IMAGENES, habilitados];
    return await pool.query(query, params);
    }
    catch(e){
        console.log(e);
    }
}

const single =async(id) =>{
    try{
    const query = "SELECT id, nombre, sinopsis, precio, valoracion, categoria FROM ?? WHERE id = ?";
    const params= [TABLA_LIBROS, id]
    const rows = pool.query(query, params);
    console.log(rows);
    return rows;
    }
    catch(e){
        console.log(e);
    }

}

const create = async (obj) => {
    try{
    const query = "INSERT INTO ?? SET ?";
    const params = [TABLA_LIBROS, obj];
    const rows = await pool.query(query, params);
    return rows;

    }
    catch(e){
        console.log(e);
    }
    
}

const createImg = async (obj) => {
    pool.query("INSERT INTO ?? SET ?", [TABLA_LIBROS_IMAGENES, obj]).then((response) => response).catch((e) => console.log(e));
}

const update = async (id, obj) => {
    try{
    const query = "UPDATE ?? AS lib SET ? WHERE lib.id = ? ";
    const params = [TABLA_LIBROS, obj, id];
    return await pool.query(query, params);
    }
    catch(e){
        console.log(e);
    }
}

const borrar = async (id, habilitados) => {
    try{
    const query ="UPDATE ?? AS lib SET habilitados = ? WHERE lib.id = ?";
    const params = [TABLA_LIBROS, habilitados, id];
    return await pool.query(query,params);
    }
    catch(e){
        console.log(e);
    }
}


module.exports = {get, single, create, createImg, update, borrar}