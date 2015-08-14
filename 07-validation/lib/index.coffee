# Build your comprehensive validation function here!
# Feel free to use any third party librarys from NPM (http://npmjs.org) for data validation.
validator = require('data-validate');
#arr=['cycling', 'programming']
exports.validate = (data) ->

  # Very naive checks - change them!
  if data.id < 0 then return false 
  
  if data.name isnt 'John Doe' then return false 

  if !validator.isEmail() data.email then return false
  
  if !validator.isFloat() data.taxRate then return false
  
  if !validator.isHexColor() data.favouriteColour then return false
  
  if !validator.isIn(["cycling"],data.interests) && !validator.isIn(["programming"],data.interests) then return false
   
  console.log("Hii");
  
  console.log("validate value " + exports.validate);
  
  return true
