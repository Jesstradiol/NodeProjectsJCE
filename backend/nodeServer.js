import express from 'express';
import mongoose from 'mongoose';
import data from './data.js';
import userRouter from './routers/userRouter.js';


const app = express();

mongoose.connect('mongodb://localhost/capstoneMusicStore', {
       useNewUrlParser: true,
       useUnifiedTopology: true,
       useCreateIndex: true,

});

app.get('/api/albums/:Id', (req, res) => {
    const album = data.albums.find((x) => x._Id === req.params.Id);
    if(album) {
        res.send(album);
    } else {
        res.status(404).send({message:'Product Not Found'});
    }
    });


app.get('/api/albums', (req, res) => {
res.send(data.albums);
});


app.use('/api/albums', userRouter);

app.get('/', (req, res) => {
res.send('Server is Locked and Loaded');
});


// eslint-disable-next-line no-unused-vars
app.use((err, req, res, next)  =>{

    res.status(500).send({ message: err.message});
});

// eslint-disable-next-line no-undef
const port = process.env.PORT || 5000;
app.listen(port, () => {
    console.log(`Swerve and Serve at http://localhost:${port}`);
});

