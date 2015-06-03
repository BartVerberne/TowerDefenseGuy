
var projList = OB_Game.allProjectiles
var listSize = ds_list_size(projList);

if (!global.gameover) 
for(var i = 0; i < listSize; i++)
{
    var bulletID = ds_list_find_value(projList, i);
    with(bulletID)
    {  
        switch(myType)
        {
            case OB_Game.SIMPLE_BULLET : if(updateSimpleBullet(bulletID) == 0) {i--; listSize--}; break;
            case OB_Game.HEAVY_BULLET : if (updateHeavyBullet(bulletID) == 0) {i--; listSize--}; break;
            case OB_Game.PIERCE_BULLET : if (updatePierceBullet(bulletID) == 0) {i--; listSize--}; break;
        }
    }
}

