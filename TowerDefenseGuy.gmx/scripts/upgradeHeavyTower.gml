var towerID = argument0;

with (towerID)
{
    myLevel++;
    
    if (myLevel == 1)
    {   
        sprite_index = Heavy_1_base;
        with (myTurretId) sprite_index = Heavy_1_turret;
        myDamage = 5;
    }
    else 
    {
        sprite_index = Heavy_2_base;   
        with (myTurretId) sprite_index = Heavy_2_turret;
        myDamage = 10;
    }
    
    sprite_set_offset(sprite_index,0,0);
    
}
