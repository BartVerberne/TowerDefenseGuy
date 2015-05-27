for (var cY = 0; cY < Grid.gridWidth; cY++) {
    for (var cX = 0; cX < Grid.gridWidth; cX++) {
        switch(Grid.gridContent[cX, cY])
        {
            case Grid.GRID_EMPTY: break;
            case Grid.GRID_TOWER_0: tower_0_update(Grid.gridIds[cX, cY]); break;    
        }
    }
}