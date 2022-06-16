const app = require('../src/app')
const request = require('supertest')

describe('GET /indicators', () =>{
    test('status 200', async ()=>{
        const response = await request(app).get('/indicators').send()
        expect(response.statusCode).toBe(200)
    })
    test('status 404', async ()=>{
        const response = await request(app).get('/indicatorsx').send()
        expect(response.statusCode).toBe(404)
    })
    test('should respond an array', async ()=>{
        const response = await request(app).get('/indicators').send()
        expect(response.body).toBeInstanceOf(Array)
    })
})


describe('GET /indicators/values/', () =>{
    test('status 200', async ()=>{
        const response = await request(app).get('/indicators/values/cobre').send()
        expect(response.statusCode).toBe(200)
    })
    test('status 404', async ()=>{
        const response = await request(app).get('/indicators/values/cobrexx').send()
        expect(response.statusCode).toBe(404)
    })
    test('should respond an array', async ()=>{
        const response = await request(app).get('/indicators/values/cobre').send()
        expect(response.body).toBeInstanceOf(Array)
    })
})