
var projList = ProjCtrl.allProjectiles
var listSize = ds_list_size(projList);

for(var i = 0; i < listSize; i++)
{
    var bulletID = ds_list_find_value(projList, i);
    with(bulletID)
    {
        var bulletType;
        with(bulletID) { 
            bulletType = myType;
        }
    
        switch(bulletType)
        {
            case ProjCtrl.SIMPLE_BULLET : if(updateSimpleBullet(bulletID) == 0) {i--; listSize--}; break;
        }
    }
}
