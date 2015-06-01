with (Grid)
{
    for (var cY = 0; cY < gridHeight; cY++) {
        for (var cX = 0; cX < gridWidth; cX++) {
            switch(gridContent[cX, cY])
            {
                case GRID_EMPTY: break;
                case GRID_TOWER_0: tower_0_update(Grid.gridIds[cX, cY]); break;    
            }
        }
    }
}
