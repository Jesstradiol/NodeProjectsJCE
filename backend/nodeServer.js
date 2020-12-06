import express from 'express';
import data from './data.js';

const app = express();

app.get('/api/album', (req, res) => {
res.send(data.albums);
});

app.get('/', (req, res) => {
res.send('Server is Locked and Loaded');

});
const port = process.env.PORT || 5000;
app.listen(port, () => {

    console.log(`Swerve and Serve at http:${port}`);
});