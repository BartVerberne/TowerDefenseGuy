myGridX = floor(x / Grid.gridPixelSize);
myGridY = floor(y / Grid.gridPixelSize);
myProgress = 0;
curDirX = 0;
curDirY = 0;
curTargetDist = 0;
destroyListeners = ds_list_create();

ds_list_add(CreepCtrl.allCreeps, id);
ds_list_add(Grid.creepBlock[myGridX, myGridY], id);

// override:
myHealth = 0;
mySpeed = 0;
myType = 0;
myDamage = 0;
myPlayerReachTreshold = 2; // in pixels
