
for(var i = 0; i < ds_list_size(ProjCtrl.allProjectiles); i++)
{
    var bulletID = ds_list_find_value(ProjCtrl.allProjectiles, i);
    with(bulletID)
    {
        var bulletType;
        with(bulletID) { 
            bulletType = myType;
        }
    
        switch(bulletType)
        {
            case ProjCtrl.SIMPLE_BULLET : updateSimpleBullet(bulletID); break;
        }
    }
}