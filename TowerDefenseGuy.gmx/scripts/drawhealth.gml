

var green = myHealth / myHealthMax * 100;

var offsetX = 6;
var offsetY = 2;
var height = 2;

draw_self();
draw_healthbar(x + offsetX, y + offsetY, x + Grid.gridPixelSize - offsetX, y + offsetY + height, green, c_black, c_red, c_green, 0, true, false)

/*
draw_set_color(c_green);
draw_line(x,y,x+green*Grid.gridPixelSize,y);
draw_set_color(c_red);
draw_line(x+green*Grid.gridPixelSize,y,x+Grid.gridPixelSize,y);*/
