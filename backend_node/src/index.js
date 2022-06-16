const app = require('./app');


// Constants
const PORT = 8181;
const HOST = '0.0.0.0';


app.listen(PORT, HOST, () => {
    console.log(`http://${HOST}:${PORT}`)
})

module.exports = app;