 //selecting unique data from the payload

%dw 2.0
output application/json
---
((payload reduce ((key, val={}) -> val ++ key)) filterObject $ != "") distinctBy $

//In the above dataweave script wim trying to select unique data from the payload ++  // for that im using reduce and filterObject function
//By using reduce function im able to get all three objects together in one object 
// by using filterObject im filtering out the unique values from that single object