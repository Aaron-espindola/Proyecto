const pool = require('../utils/bd');
const TABLA_EMPLEADOS = "empleados"

const get = async(habilitados) => {
    const query = "SELECT id, nombre FROM ?? WHERE habilitados = ?  ";
    const params = [TABLA_EMPLEADOS, habilitados];
    const rows = await pool.query(query, params);
    return rows;
}

const single = async(id) =>{
    const query = "SELECT * FROM ?? WHERE id = ? AND habilitados = true";
    const params = [TABLA_EMPLEADOS, id];
    const rows = await pool.query(query, params);
    console.log(rows);
    return rows;
}

const create = async (obj) => {
    const query = "INSERT INTO ?? SET ?";
    const params= [TABLA_EMPLEADOS, obj];
    const rows = await pool.query(query, params);
    return rows;
}

const update = async (id, obj) => {
    const query = "UPDATE ?? AS emp SET ? WHERE emp.id = ?"
    const params=[TABLA_EMPLEADOS, obj, id];
    const rows = await pool.query(query, params);
    return rows;
}

const borrar = async (id, habilitados) => {
    const query = "UPDATE ?? AS emp SET habilitados = ? WHERE emp.id = ?";
    const params = [TABLA_EMPLEADOS,habilitados, id];
    return await pool.query(query, params);
}

module.exports = {get, single, create, update, borrar}