
fChance = 0.001;

with(OB_Game) {

    if (!firstRun) {
        resetCreeps();
        resetTowers();
        resetProjectiles();       
    }
    firstRun = false;    
    
    with(Grid) resetGrid();
    setPaths();
}