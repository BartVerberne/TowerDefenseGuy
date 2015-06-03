var towerID = argument0;

with (towerID)
{

    if (myLevel == 1)
    {   
        sprite_index = Basic_1_base;
        myDamage = 5;
    }
    else 
    {
        sprite_index = Basic_2_base;   
        myDamage = 10;
    }
    
    
    sprite_set_offset(sprite_index,0,0);
}
