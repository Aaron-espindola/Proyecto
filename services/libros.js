const {create, createImg} = require('./../models/libros');
const {imgFile} = require('./../utils/fileHandler');

const createLibro = async(body, file) => {
    try{
        const {insertId : id_libro} = await create(body);
        const uid = imgFile(file);
        const obj = {id_libro, uid};
        const {insertId : idFile} = await createImg(obj);
        return idFile;
    }
    catch(e){
        console.error(e);
    }
}   

module.exports = {createLibro};