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

////////////////////////////

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


///////////////////////////


for (var cY = 0; cY < gridHeight; cY++) {
    for (var cX = 0; cX < gridWidth; cX++) {
        gridPathsXdir[cX,cY] = 0;
        gridPathsYdir[cX,cY] = 0;
        gridPathsLength[cX,cY] = 0;
    }
}
