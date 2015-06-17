var towerID = argument0;

with (towerID)
{
    myLevel++;
    audio_play_sound(Place_sound, 1, false);
    if (myLevel == 1)
    {   
        sprite_index = Splitter_1_base;
    }
    else 
    {
        sprite_index = Splitter_2_base;   
    }
    
    myReloadTime = OB_Game.splitterTowerReloadTime[myLevel]; // ms
    myDamage = OB_Game.splitterTowerDamage[myLevel];
    myRange = OB_Game.splitterTowerRange[myLevel];
    
    sprite_set_offset(sprite_index,0,0);
    
}
