var towerID = argument0;

with (towerID)
{
     myLevel++;
    
    audio_play_sound(Place_sound, 1, false);
    if (myLevel == 1)
    {   
        sprite_index = Basic_1_base;
        with (myTurretId) sprite_index = Basic_1_turret;
    }
    else 
    {
        sprite_index = Basic_2_base;
        with (myTurretId) sprite_index = Basic_2_turret;
    }
    
    myReloadTime = OB_Game.splitterTowerReloadTime[myLevel]; // ms
    myDamage = OB_Game.splitterTowerDamage[myLevel];
    myRange = OB_Game.splitterTowerRange[myLevel];
    
    sprite_set_offset(sprite_index,0,0);
}