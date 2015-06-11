initTowerAbstr();

myType = Grid.GRID_SNIPER_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = OB_Game.sniperTowerReloadTime; // ms
myDamage = OB_Game.sniperTowerDamage;
myRange = OB_Game.sniperTowerRange;

myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, SniperTurret);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}
