//use chai to test api
const chai = require('chai');
const chaiHttp = require('chai-http');
const server = require('../server');
const jwt = require('jsonwebtoken');
const should = chai.should();
const expect = chai.expect;
const SECRET_KEY = "shffhsjfkh"


chai.use(chaiHttp);
//test api
describe('API', () => {
    it('should return 200', (done) => {
        chai.request(server)
            .get('/test')
            .end((err, res) => {
                res.should.have.status(200);
                done();
            });
    });

    it('should return 404', (done) => {
        chai.request(server)
            .get('/testadd')
            .end((err, res) => {
                res.should.have.status(404);
                done();
            });
    }
    );

    it('should return token', (done) => {
        chai.request(server)
            .post('/login')
            .send({ username: 'tour',password: '1234'})
            .end((err, res) => {
                res.should.have.status(200);
                const vertify = jwt.verify(res.text, SECRET_KEY);
                console.log(vertify)
                const user = vertify.user;
                const password = vertify.password;
                expect(user).to.equal('tour');
                expect(password).to.equal('1234');
                done();
            });
            
    }
    );
  
   
});
