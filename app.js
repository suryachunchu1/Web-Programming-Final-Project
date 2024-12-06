const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');
const db = require('./db');

const authRoutes = require('./routes/auth');
const crudRoutes = require('./routes/crud');

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session({
    secret: 'your-secret-key',
    resave: false,
    saveUninitialized: true,
}));

app.set('view engine', 'ejs');
app.use(express.static('public'));

app.use('/auth', authRoutes);
app.use('/crud', crudRoutes);

app.get('/', (req, res) => {
    res.render('index', { user: req.session.user || null });
});

app.get('/about', (req, res) => {
    res.render('about'); 
});

app.get('/contact', (req, res) => {
    res.render('contact');
});


app.listen(4000, () => {
    console.log('Server started on http://localhost:4000');
});
