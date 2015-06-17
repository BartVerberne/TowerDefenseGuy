initTowerAbstr();

myType = Grid.GRID_SPLITTER_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

audio_play_sound(Place_sound, 1, false);

myNextShotTime = 0;
myReloadTime = OB_Game.splitterTowerReloadTime[0]; // ms
myDamage = OB_Game.splitterTowerDamage[0];
myRange = OB_Game.splitterTowerRange[0];