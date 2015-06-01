var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var px = argument4;
var py = argument5;

if (x1 == x2 && y1 == y2)
{
    var dx = x2 - px;
    var dy = y2 - py;
    return sqrt(dx*dx+dy*dy);
}
else {
    var dx = x2 - x1;
    var dy = y2 - y1;
    var dist = sqrt(dx*dx+dy*dy); 
    var cross = (x2 - x1) * (py - y1) - (y2 - y1) * (px - x1);  
    return abs(cross / dist);
}
