var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 1)
    {   
        sprite_index = Tower_1_2_base;
        myDamage = 5;
    }
    else 
    {
        sprite_index = Tower_1_2_base;   
        myDamage = 10;
    }
    
    sprite_set_offset(sprite_index,0,0);
    
}



