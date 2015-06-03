with(Grid) initGrid();
with(Player) initPlayer();
initProjectiles();
initCreeps();

gameRuns = 0;
selectedTowerType = Grid.GRID_TOWER_0;

fChance = 0.001;
