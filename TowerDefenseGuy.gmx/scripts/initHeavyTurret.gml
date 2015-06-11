initTowerAbstr();

myType = Grid.GRID_HEAVY_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = OB_Game.heavyTowerReloadTime; // ms
myDamage = OB_Game.heavyTowerDamage;
myRange = OB_Game.heavyTowerRange;

myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, HeavyTurret);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}
