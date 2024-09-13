//straight pipe adapter
//Designed by David Herrera
//If you find anything I produce useful. Consider sending some love.
//venmo @davidherrera55
//shib 0xA7315166a9ccC2682e8c25D66EA7c5e3d7563c40
//eth 0xA7315166a9ccC2682e8c25D66EA7c5e3d7563c40
//btc bc1qvaehlavm6w3tygf8rfmkea9keumv3mzt4y8and


//Build Notes
//this will be a straight coupling
//innner diameter of large pipe must be 98mm for my application. this is the od of myt fan.
//inner diameter of the small pipe must be 90.
//smalltube();
//largetube();
//connector();
adapter();

idsmall=90;
idlarge=98;


module smalltube(){difference(){
linear_extrude(20)circle(d=idsmall+3, $fn=360);
linear_extrude(20)circle(d=idsmall, $fn=360);}}

module largetube(){difference(){
linear_extrude(20)circle(d=idlarge+3, $fn=360);
linear_extrude(20)circle(d=idlarge, $fn=360);}}

module connector(){difference(){
    cylinder(d1=idlarge+3,d2=idsmall+3,h=20,$fn=360);
    cylinder(d1=idlarge,d2=idsmall,h=20,$fn=360);}}
    
module adapter(){
    translate([0,0,-20])largetube();
    connector();
    translate([0,0,20])smalltube();}