
with(OB_Game) {

    fChance = 0.001;

    if (!firstRun) {
        resetCreeps();
        resetTowers();
        resetProjectiles();   
        resetWaves();    
    }
    firstRun = false;    
    
    with(Grid) resetGrid();
    setPaths();
}
