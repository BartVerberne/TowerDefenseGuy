var towerID = argument0;

with (towerID)
{
    switch (myLevel) {
        case 0 : sprite_index = Tower_0_lvl1; break;
    }
    
    sprite_set_offset(sprite_index,0,0);

    myDamage = 15;
    myReloadTime = 700;
    myRange = 250;
}
