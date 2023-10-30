import { Login } from '../repository/usuarioRepository.js'
import { Router } from 'express';
const endpoints = Router();

endpoints.post('/usuario/login', async (req, resp) => {
    try {
        const { email, senha } = req.body

        const resposta = await Login(email, senha)
        if(!resposta) {
            throw new Error ('Credenciais Inválidas!')
        }
        
        resp.send(resposta)
        
    } catch (err) {
        resp.status(401).send({
            erro: err.message
        });
    }
})

export default endpoints;