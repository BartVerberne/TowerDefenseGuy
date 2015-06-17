var waveInfo = waves[curWave];
var waveInfoCount = ds_list_size(waveInfo);

for(var j = 0; j < waveInfoCount; j++)
{
    var curInfo =  ds_list_find_value(waveInfo, j);
    
    var spawnTargetCount = ds_list_find_value(curInfo, CREEP_COUNT);
    var spawnedCount = ds_list_find_value(curInfo, CREEPS_SPAWNED);
    
    if (spawnedCount < spawnTargetCount) {
        return false;
    }
} 

return ds_list_size(allCreeps) == 0;
