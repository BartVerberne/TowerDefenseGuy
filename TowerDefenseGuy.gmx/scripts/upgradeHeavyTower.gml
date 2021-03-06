var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 0)
    {   
        sprite_index = Heavy_1_base;
        with (myTurretId) sprite_index = Heavy_1_turret;
    }
    else 
    {
        sprite_index = Heavy_2_base;   
        with (myTurretId) sprite_index = Heavy_2_turret;
    }
    
    myReloadTime = OB_Game.splitterTowerReloadTime[myLevel]; // ms
    myDamage = OB_Game.splitterTowerDamage[myLevel];
    myRange = OB_Game.splitterTowerRange[myLevel];
    
    sprite_set_offset(sprite_index,0,0);
    
}