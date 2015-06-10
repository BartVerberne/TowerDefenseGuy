initTowerAbstr();

// overrides:
myType = Grid.GRID_TOWER_0;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

// tower_0 specific

// shoots single target bullets
// they "curvwe" towards the target
// if the target dies while the bullet goes, 
// the bullet goes straight on (till it leaves the map)
// it can hit targets besides the original target

myNextShotTime = 0;
myReloadTime = 400; // ms
myDamage = 5;
myRange = 150;
myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, Tower_0_turret);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}