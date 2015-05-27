var global.gridPixelSize = 32;
var global.gridWidth = room_width / global.gridPixelSize;
var global.gridHeight = room_height / global.gridPixelSize;

// The actual grid representation:
var g

for (var cY = 0; cY < global.gridWidth; cY++) {
    for (var cX = 0; cX < global.gridWidth; cX++) {
        global.gridContent[cX, cY] = empty;
    }
}
