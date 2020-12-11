import jwt from 'jsonwebtoken';


export const generateToken = (user) =>{

    return jwt.sign({_id: user._id, userEmail: user.userEmail, isAdmin: user.Admin,
    }, process.env.JWT_SECRET,
    {
        expiresIn: '30d' ,
    }
      );
};