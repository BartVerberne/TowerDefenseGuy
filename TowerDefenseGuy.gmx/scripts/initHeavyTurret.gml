initTowerAbstr();

myType = Grid.GRID_HEAVY_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = 1000; // ms
myDamage = 3;
myRange = 4*Grid.gridPixelSize;
myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, HeavyTurret);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}
