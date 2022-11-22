import express, {Request, Response} from 'express';

const app = express();

const PORT = 3001;

app.get('/', (req: Request, res: Response): void => {

    const num: Number = 12;

    res.json({message: 'Welcome to Typescript Tutorial', number:  num});

    // also try showing typeof num
});

app.listen(PORT, (): void => {
    console.log('server is running')
});