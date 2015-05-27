gridPixelSize = 32;
gridWidth = room_width / gridPixelSize;
gridHeight = room_height / gridPixelSize;

image_xscale = gridWidth;
image_yscale = gridHeight;
//visible = false;
depth = -2;

// basic grid representation:

GRID_EMPTY = 0;
GRID_BLOCKED = 1;
GRID_TOWER_0 = 2;

GRID_NO_ID = 0;

gridContent[0,0] = 0;
gridIds[0,0] = 0;

for (var cY = 0; cY < gridWidth; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridContent[cX, cY] = GRID_EMPTY;
    }
}
for (var cY = 0; cY < gridWidth; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridIds[cX, cY] = GRID_NO_ID;
    }
}


// block seaking variables:

NOT_VISITED = 0;
VISITED = 1;
gridSeekBlock[0,0] = 0;

for (var cY = 0; cY < gridWidth; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridSeekBlock[cX, cY] = NOT_VISITED;
    }
}



//ATTETNTION : creepBlock and gridPaths has an extra layer around the map!

// Creep registrations

creepBlock[0,0] = 0;

for (var cY = 0; cY < gridWidth + 2; cY++) {
    for (var cX = 0; cX < gridWidth + 2; cX++) {
        creepBlock[cX, cY] = ds_list_create();
    }
}

// path seeaking variables

NO_PARENT = -2;
PATH_PARENT_CHECK = 0;
PATHDIR_X = 0;
PATHDIR_Y = 1;
PATH_LENGTH = 2;
//PATH_STEPSIZE = 3;

gridPathsXdir[0,0] = 0;
gridPathsYdir[0,0] = 0;
gridPathsLength[0,0] = 0;
//gridPathsStepSize[0,0] = 0;

for (var cY = 0; cY < gridWidth +2; cY++) {
    for (var cX = 0; cX < gridWidth +2; cX++) {
        gridPathsXdir[cX,cY] = 0;
        gridPathsYdir[cX,cY] = 0;
        gridPathsLength[cX,cY] = 0;
    }
}