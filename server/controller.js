const  saltRounds = 10
const bcrypt = require('bcryptjs')
module.exports = {
    register: (req,res) =>{
        const db = req.app.get('db')

        const {username, password, email, name} = req.body
        const [user] = await db.get_username(username)
        if(user) return res.sendStatus(401)
        const salt = bcrypt.genSaltSync(saltRounds)
        const hash = bcrypt.hashSync(password, salt)
        const usernameId =await db.add_username(username)
        console.log(usernameId)
        const [newUser] = await db.add_hash(usernameId.username_id,hash)
        req.session.user = {
            username: newUser.username,
            id: newUser.username_id
        }
        res.status(200).send(req.session.user)
    },
    login: (req,res)=>{

    },
    getUserInfo:(req,res)=>{

    },
    logout:(req,res)=>{

    }
}