var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 1)
    {   
        sprite_index = Sniper_1_base;
        myDamage = 14;
    }
    else 
    {
        sprite_index = Sniper_1_base;   
        myDamage = 22;
    }
    
    sprite_set_offset(sprite_index,0,0);
    
}

