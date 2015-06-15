global.goldColor = make_color_rgb(255,215,0); 
global.keyColor = make_color_rgb(40,40,240); 
global.livesColor = make_color_rgb(255,30,30);
global.playerCtrlRadColor = make_color_rgb(50,200,50);

global.sqrt2 = 1.41421356237;
global.sqrt2inv = 1 / global.sqrt2;
global.PI = 3.14159265359;

with(Grid) initGrid();
with(Player) initPlayer();

initProjectiles();
initCreeps();
initTowers();

firstRun = true;
selectedTowerType = Grid.GRID_TOWER_0;

fChance = 0.001;

resetGame();
