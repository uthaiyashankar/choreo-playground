
const express = require('express');
const app = express();
app.use(express.json());

const PORT = 3000; //process.env.PORT

app.listen(PORT, () => console.log('Listening on port: ', PORT));

app.get('/greeting', (req, res) => { 
    var retVal = { id: 1, content: 'Hello ' + req.query.name + '!' };   
    res.send(retVal);
});