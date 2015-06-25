with(Grid) initGrid();
with(Player) initPlayer();

initProjectiles();
initCreeps();
initTowers();
waveDef();

firstRun = true;
selectedTowerType = Grid.GRID_TOWER_0;

fChance = 0.0001;

//hgihscore
if(file_exists("score.ini")) {
    ini_open("score.ini");
    global.highscore = ini_read_real("score", "highscore",0);
    ini_close();
}
else {
    global.highscore = 0;
}

resetGame();
