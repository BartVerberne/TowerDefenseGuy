gridPixelSize = 32;
gridWidth = room_width / gridPixelSize;
gridHeight = room_height / gridPixelSize;

room_caption = string(fps); 

image_xscale = gridWidth;
image_yscale = gridHeight;
//visible = false;
depth = -2;

// basic grid representation:
// negative for walkable by creeps!
GRID_EMPTY = -2;
GRID_EDGE = -1;
GRID_BLOCKED = 0;
GRID_TOWER_0 = 1;
GRID_HEAVY_TOWER = 2;
GRID_SNIPER_TOWER = 3;
GRID_SPLITTER_TOWER = 4;

GRID_NO_ID = 0;

gridContent[gridWidth-1,gridHeight-1] = 0;
gridIds[0,0] = 0;

for (var cY = 1; cY < gridHeight - 1; cY++) {
    for (var cX = 1; cX < gridWidth - 1; cX++) {
        gridContent[cX, cY] = GRID_EMPTY;
    }
}

for(cY = 0; cY < gridHeight; cY++)
{
    gridContent[0, cY] = GRID_EDGE;
    gridContent[gridWidth - 1, cY] = GRID_EDGE;
}

for(cX = 1; cX < gridWidth - 1; cX++)
{
    gridContent[cX, 0] = GRID_EDGE;
    gridContent[cX, gridHeight - 1] = GRID_EDGE;
}

for (var cY = 0; cY < gridWidth; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridIds[cX, cY] = GRID_NO_ID;
    }
}


// block seaking variables:

NOT_VISITED = 0;
VISITED = 1;
gridSeekBlock[gridWidth - 1, gridHeight - 1] = 0;

for (var cY = 0; cY < gridWidth; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridSeekBlock[cX, cY] = NOT_VISITED;
    }
}

// Creep registrations

creepBlock[gridWidth - 1, gridHeight - 1] = 0;

for (var cY = 0; cY < gridHeight; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        creepBlock[cX, cY] = ds_list_create();
    }
}

// path seeaking variables

NO_PARENT = -2;
PATH_PARENT_CHECK = 0;
PATHDIR_X = 0;
PATHDIR_Y = 1;
PATH_LENGTH = 2;

gridPathsXdir[gridWidth - 1, gridHeight - 1] = 0;
gridPathsYdir[gridWidth - 1, gridHeight - 1] = 0;
gridPathsLength[gridWidth - 1, gridHeight - 1] = 0;

for (var cY = 0; cY < gridHeight; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridPathsXdir[cX,cY] = 0;
        gridPathsYdir[cX,cY] = 0;
        gridPathsLength[cX,cY] = 0;
    }
}
