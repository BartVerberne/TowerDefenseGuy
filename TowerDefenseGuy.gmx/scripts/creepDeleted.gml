
var xBuffer = x;
var yBuffer = y;

for(var j = 0; j < ds_list_size(destroyListeners); j++)
{
    // tell the listeners the target is dead
    with(ds_list_find_value(destroyListeners, j)){
        creepAlive = false;
        lastCreepPx = xBuffer;
        lastCreepPy = yBuffer;
    }
}

ds_list_destroy(destroyListeners);

ds_list_delete(CreepCtrl.allCreeps, ds_list_find_index(CreepCtrl.allCreeps, id));

ds_list_delete(Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], 
                                ds_list_find_index(Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], id));