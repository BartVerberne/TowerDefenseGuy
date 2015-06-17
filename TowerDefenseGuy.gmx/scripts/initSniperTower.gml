initTowerAbstr();

myType = Grid.GRID_SNIPER_TOWER;
myLevel = 0;
Grid.gridContent[myGridX, myGridY] = myType;

myNextShotTime = 0;
myReloadTime = OB_Game.sniperTowerReloadTime[0]; // ms
myDamage = OB_Game.sniperTowerDamage[0];
myRange = OB_Game.sniperTowerRange[0];

myTurretId = instance_create(x + Grid.halfPixelSize, y + Grid.halfPixelSize, SniperTurret);

audio_play_sound(Place_sound, 1, false);

with(myTurretId)
{
    depth = -2;
    image_angle = 0;
}
