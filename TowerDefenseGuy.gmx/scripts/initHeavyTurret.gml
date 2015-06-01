initTowerAbstr();

myType = Grid.GRID_HEAVY_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = 1000; // ms
myDamage = 2;
myRange = 4*Grid.gridPixelSize;
