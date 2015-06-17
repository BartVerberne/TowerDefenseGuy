initTowerAbstr();

myType = Grid.GRID_HEAVY_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = OB_Game.heavyTowerReloadTime[0]; // ms
myDamage = OB_Game.heavyTowerDamage[0];
myRange = OB_Game.heavyTowerRange[0];

myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, HeavyTurret);

audio_play_sound(Place_sound, 1, false);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}