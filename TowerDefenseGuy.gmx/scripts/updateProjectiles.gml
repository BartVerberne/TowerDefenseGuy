
var projList = OB_Game.allProjectiles
var listSize = ds_list_size(projList);

for(var i = 0; i < listSize; i++)
{
    var bulletID = ds_list_find_value(projList, i);
    with(bulletID)
    {  
        switch(myType)
        {
            case OB_Game.SIMPLE_BULLET : if(updateSimpleBullet(bulletID) == 0) {i--; listSize--}; break;
            case OB_Game.HEAVY_BULLET : if (updateHeavyBullet(bulletID) == 0) {i--; listSize--}; break;
        }
    }
}
