const request = require('supertest');
const app = require('./server');

describe('GET /bisection', () => {
  it('should return all bisection data', async () => {
    const response = await request(app).get('/bisection');
    expect(response.statusCode).toBe(200);
    expect(response.body.length).toBeGreaterThan(0);
  });
});

describe('GET /bisection/:id', () => {
  it('should return bisection data for a specific id', async () => {
    const response = await request(app).get('/bisection/1');
    expect(response.statusCode).toBe(200);
    expect(response.body[0].id).toBe(1);
  });
});

describe('POST /bisection', () => {
  it('should insert new bisection data', async () => {
    const data = {
      FX: 'x^2-4',
      XL: 1,
      XR: 2,
    };
    const response = await request(app).post('/bisection').send(data);
    expect(response.statusCode).toBe(200);
    expect(response.body.affectedRows).toBe(1);
  });
});

describe('POST /register', () => {
  it('should register a new user and return a JWT', async () => {
    const data = {
      user_id: 'Tinkorn',
      password: 'Boonthong',
    };
    const response = await request(app).post('/register').send(data);
    expect(response.statusCode).toBe(200);
    expect(response.text).toMatch(/^[\w-]+\.[\w-]+\.[\w-]+$/); // check that the response text is a JWT
  });
});


