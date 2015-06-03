initTowerAbstr();

myType = Grid.GRID_SPLITTER_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = 1000; // ms
myDamage = 4;
myRange = 4*Grid.gridPixelSize;