with (Grid)
{
    for (var cY = 0; cY < gridHeight; cY++) {
        for (var cX = 0; cX < gridWidth; cX++) {
            switch(gridContent[cX, cY])
            {
                case GRID_EMPTY: break;
                case GRID_TOWER_0: tower_0_update(gridIds[cX, cY]); break;   
                case GRID_HEAVY_TOWER: update_heavy_tower(gridIds[cX, cY]); break;
            }
        }
    }
}
