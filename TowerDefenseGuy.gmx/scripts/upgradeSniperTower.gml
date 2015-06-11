var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 1)
    {   
        sprite_index = Sniper_1_base;
        with (myTurretId) sprite_index = Sniper_1_turret;
    }
    else 
    {
        sprite_index = Sniper_2_base;   
        with (myTurretId) sprite_index = Sniper_2_turret;
    }
    
    myReloadTime = OB_Game.splitterTowerReloadTime[myLevel]; // ms
    myDamage = OB_Game.splitterTowerDamage[myLevel];
    myRange = OB_Game.splitterTowerRange[myLevel];
    
    sprite_set_offset(sprite_index,0,0);
    
}
