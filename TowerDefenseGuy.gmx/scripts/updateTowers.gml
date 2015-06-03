if (!global.gameover) 
with (Grid)
{
    for (var cY = 0; cY < gridHeight; cY++) {
        for (var cX = 0; cX < gridWidth; cX++) {
            switch(gridContent[cX, cY])
            {
                case GRID_EMPTY: break;
                case GRID_TOWER_0: update_tower_0(gridIds[cX, cY]); break;   
                case GRID_HEAVY_TOWER: update_heavy_tower(gridIds[cX, cY]); break;
                case GRID_SNIPER_TOWER: update_sniper_tower(gridIds[cX, cY]); break;
                case GRID_SPLITTER_TOWER: update_splitter_tower(gridIds[cX, cY]); break;
            }
        }
    }
}
