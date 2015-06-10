initTowerAbstr();

myType = Grid.GRID_SNIPER_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = 2000; // ms
myDamage = 8;
myRange = 10*Grid.gridPixelSize;

myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, SniperTurret);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}