import express from 'express';
import expressAsyncHandler from 'express-async-handler';
import Album from '../Tables/albumTable';


const albumRouter = express.Router();


albumRouter.get('/',expressAsyncHandler(async (req,res)  =>{

    const albums = await Album.find({});
    res.send(albums);
}) );

albumRouter.get('/seed', expressAsyncHandler(async(req, res) =>{

    const createdAlbums = await Album.insertMany();
    res.send({ createdAlbums});

} ));


albumRouter.get('/id', expressAsyncHandler(async(req, res) =>{

    const album = await Album.findById(req.params.id);
    if (album) {
        res.send(album);
    }else {

        res.status(404).send({ message: 'Album Not Found'});
    }
}));

export default albumRouter;