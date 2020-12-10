import express from 'express';
import data from './data.js';


const app = express();

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

app.get('/', (req, res) => {
res.send('Server is Locked and Loaded');
});
const port = process.env.PORT || 5000;
app.listen(port, () => {

    console.log(`Swerve and Serve at http://localhost:${port}`);
});