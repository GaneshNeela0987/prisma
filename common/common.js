const jwt = require("jsonwebtoken");
const middleware=(req,res,next)=>{
    var token = req.headers['x-access-token'];
    if (!token) return res.send({ auth: false, message: 'No token provided.' });
    
    try {
      const decoded = jwt.verify(token, "mysterykeytokengeneratedrandomly");
      req.user = decoded;
    } catch (err) {
      return res.status(401).send("Invalid Token");
    }
    //console.log(req.user,"separate common js file")
    return next();
}

module.exports.methods={middleware}
  