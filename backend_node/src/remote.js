const axios = require('axios').default

const remoteHost = 'https://www.indecon.space'

const indicators = ["cobre","dolar","euro","ipc","ivp","oro","plata","uf","utm","yen"];


const getLast = async () => {
    try {
        const response = await axios.get(`${remoteHost}/last`, )
        const data = response.data;
        const values = Object.values(data)
        const result = [];
        
        values.forEach((e)=>{
            result.push(e);
        });
        
        return result;
    } catch (e) {
        console.error(e);
        throw e
    }
}

const getById = async (id) => {
    try {
        const response = await axios.get(`${remoteHost}/values/${id}`)
        const dataValues = response.data.values;
        const entries = Object.entries(dataValues);
        const result = [];
        entries.forEach((k)=> {
            result.push({date: parseInt(k[0]), value: k[1]})
        });
        return result;

    } catch (e) {
        throw e
    }
}

module.exports = { getLast, getById, indicators }