const repository = require('./remote')

const express = require('express')
const app = express()
const cors = require('cors')


app.use(cors({
    origin: '*',
}))

app.get('/indicators', async (req, res) => {
    try {
        const result = await repository.getLast();
        res.json(result).send();
    } catch (e) {
        console.error(e)
        res.status(500).send();
    }
})

app.get('/indicators/values/:id', async (req, res) => {
    
    const id = req.params.id;
    const indicators = repository.indicators;

    if (!id || !indicators.some((value) => value == id)) {
        res.status(404).send();
        return;
    }
    
    try {
        const result = await repository.getById(id);
        res.json(result);
    } catch (e) {
        console.error(e)
        res.status(500);
    }
})

app.get('*', (req, res) => {
    res.status(404).send();
  });



module.exports = app;