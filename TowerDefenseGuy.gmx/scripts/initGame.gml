with(Grid) initGrid();
with(Player) initPlayer();

initProjectiles();
initCreeps();

firstRun = true;
selectedTowerType = Grid.GRID_TOWER_0;

fChance = 0.001;

resetGame();
