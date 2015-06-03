var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 1)
    {   
        sprite_index = Sprite_splitter_tower_1;
        myDamage = 8;
    }
    else 
    {
        sprite_index = Sprite_splitter_tower_1;   
        myDamage = 16;
    }
    
    sprite_set_offset(sprite_index,0,0);
    
}

