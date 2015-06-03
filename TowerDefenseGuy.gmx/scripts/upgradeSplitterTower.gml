var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 1)
    {   
        sprite_index = Splitter_1_base;
        myDamage = 8;
    }
    else 
    {
        sprite_index = Splitter_2_base;   
        myDamage = 16;
    }
    
    sprite_set_offset(sprite_index,0,0);
    
}