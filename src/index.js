const express = require('express');
const cors = require('cors');
const app = express();

app.set('port', process.env.PORT || 5001);

//Middleware
app.use(express.json());
app.use(cors());


//Routes
app.use(require('./routes/users'));

//Corriendo server
app.listen(app.get('port'), () => {
    console.log('Server on port', app.get('port'));
});