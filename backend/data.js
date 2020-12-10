import bcrypt from 'bcryptjs';

const data = {

    users: [
        {
        userName: 'Jessica Clarice',
        userEmail: 'HBIC@inCharge.org',
        userPassword: bcrypt.hashAsync('myPassword1234', 8),
        isAdmin: true
        },
        {
        userName: 'SuperUSer',
        userEmail: 'superUser@user.shop',
        userPassword: bcrypt.hashAsync('userPassWord1234', 8),
        isAdmin: false
        }

    ],


    albums: [
        {
            AlbumID: '3778',
            ArtistID: '123427',
            artists: 'Blur',
            AlbumTitle: '13',
            Genre: 'Rock',
            copiesOnHand: '19',
            AlbumRelease: '1999-03-15',
            AlbumCost: '19.99',
            TrackAmount: '13',
            ProducerFName: 'William',
            ProducerLName: 'Orbit',
            InPrint: '1',
            image: '/Images/Covers/13.jpg',
            rating: '3',
            numReviews: '10',
        },
        {
            AlbumID: '1177',
            ArtistID: '123456',
            artists: 'Brian Eno',
            AlbumTitle: 'Taking Tiger Mountain',
            Genre: 'Experimental',
            copiesOnHand: '15',
            AlbumRelease: '1974-11-01',
            AlbumCost: '9.00',
            TrackAmount: '10',
            ProducerFName: 'Brian',
            ProducerLName: 'Eno',
            InPrint: '1',
            image: '/Images/Covers/TakingTigerMountain.jpg',
            rating: '5',
            numReviews: '8',
        },
        {
            AlbumID: '3677',
            ArtistID: '123587',
            artists: 'CAN',
            AlbumTitle: 'Tago Mago',
            Genre: 'Experimental',
            copiesOnHand: '0',
            AlbumRelease: '1971-02-01',
            AlbumCost: '6.99',
            TrackAmount: '7',
            ProducerFName: 'The band',
            ProducerLName: 'CAN',
            InPrint: '1',
            image: '/Images/Covers/TagoMago.jpg',
            rating: '1.5',
            numReviews: '50',
        },
        {
            AlbumID: '7778',
            ArtistID: '123466',
            artists: 'David Bowie',
            AlbumTitle: 'Low',
            Genre: 'Rock',
            copiesOnHand: '11',
            AlbumRelease: '1977-01-14',
            AlbumCost: '10.00',
            TrackAmount: '10',
            ProducerFName: 'Tony',
            ProducerLName: 'Visconti',
            InPrint: '1',
            image: '/Images/Covers/Low.jpg',
            rating: '5',
            numReviews: '6',
        },
        {
            AlbumID: '1277',
            ArtistID: '123417',
            artists: 'Frank Zappa',
            AlbumTitle: 'Lumpy Gravy',
            Genre: 'Experimental',
            copiesOnHand: '5',
            AlbumRelease: '1967-08-07',
            AlbumCost: '5.00',
            TrackAmount: '5',
            ProducerFName: 'Frank',
            ProducerLName: 'Zappa',
            InPrint: '1',
            image: '/Images/Covers/LumpyGravy.jpg',
            rating: '3.5',
            numReviews: '9',
        },
        {
            AlbumID: '4077',
            ArtistID: '123617',
            artists: 'Janes Addiction',
            AlbumTitle: 'Nothings Shocking',
            Genre: 'Rock',
            copiesOnHand: '4',
            AlbumRelease: '1988-08-23',
            AlbumCost: '7.99',
            TrackAmount: '11',
            ProducerFName: 'Dave',
            ProducerLName: 'Jerden',
            InPrint: '1',
            image: '/Images/Covers/NothingsShocking.jpg',
            rating: '4.0',
            numReviews: '11',
        },
        {
            AlbumID: '1077',
            ArtistID: '123496',
            artists: 'Ween',
            AlbumTitle: 'The Pod',
            Genre: 'EPsychedelic',
            copiesOnHand: '20',
            AlbumRelease: '1991-09-20',
            AlbumCost: '8.00',
            TrackAmount: '23',
            ProducerFName: 'Dean and Gene',
            ProducerLName: 'Ween',
            InPrint: '1',
            image: '/Images/Covers/ThePod.jpeg',
            rating: '2.5',
            numReviews: '8',
        },
        {
            AlbumID: '3077',
            ArtistID: '123557',
            artists: 'Todd Rundgren',
            AlbumTitle: 'A Wizard, A True Star',
            Genre: 'Rock',
            copiesOnHand: '2',
            AlbumRelease: '1973-03-02',
            AlbumCost: '7.99',
            TrackAmount: '19',
            ProducerFName: 'Todd',
            ProducerLName: 'Rundgren',
            InPrint: '1',
            image: '/Images/Covers/AWizardATrueStar.jpg',
            rating: '1',
            numReviews: '25',
        },

    ],
};

export default data;
