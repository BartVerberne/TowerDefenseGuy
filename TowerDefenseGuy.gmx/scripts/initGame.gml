global.goldColor = make_color_rgb(255,215,0); 
global.reloadColor = c_lime;
global.damageColor = c_red;
global.keyColor = make_color_rgb(40,40,240); 
global.livesColor = make_color_rgb(255,30,30);
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

//highscore
if (file_exists("score.ini")) { //Check if ini file exists
    ini_open("score.ini"); // open it
    global.highscore = ini_read_real("score","highscore",0); // load the value of the high score, set it to global.highscore, default 0.
    ini_close(); //close ini
} else {
    global.highscore = 0; // No ini, brand new game, set high score to 0.
}

resetGame();
