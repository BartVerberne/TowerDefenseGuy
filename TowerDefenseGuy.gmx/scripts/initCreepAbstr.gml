myGridX = floor(x / Grid.gridPixelSize);
myGridY = floor(y / Grid.gridPixelSize);
myProgress = 0;
curDirX = 0;
curDirY = 0;
curTargetDist = 0;
destroyListeners = ds_list_create();

ds_list_add(OB_Game.allCreeps, id);
ds_list_add(Grid.creepBlock[myGridX, myGridY], id);

// override:
myHealthMax = 0;
myHealth = 0;
mySpeed = 0;
myType = 0;
myScore = 0;
myGold = 0;
myPlayerReachTreshold = 2; // in pixels
