var global.gridPixelSize = 32;
var global.gridWidth = room_width / global.gridPixelSize;
var global.gridHeight = room_height / global.gridPixelSize;

image_xscale = global.gridWidth;
image_yscale = global.gridHeight;
visible = false;
depth = 0;

// The actual grid representation:
var global.GRID_EMPTY = 0;
var global.GRID_TOWER_0 = 1;

for (var cY = 0; cY < global.gridWidth; cY++) {
    for (var cX = 0; cX < global.gridWidth; cX++) {
        global.gridContent[cX, cY] = global.GRID_EMPTY;
    }
}
for (var cY = 0; cY < global.gridWidth; cY++) {
    for (var cX = 0; cX < global.gridWidth; cX++) {
        global.gridIds[cX, cY] = 0;
    }
}
