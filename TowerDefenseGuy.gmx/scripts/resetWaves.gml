global.gameStartTime = get_timer();
curWave = 0;

for(var i = 0; i < waveCount; i++) {
    var waveInfo = waves[curWave];
    var waveInfoCount = ds_list_size(waveInfo);
    for(var j = 0; j < waveInfoCount; j++)
    {
        var curInfo =  ds_list_find_value(waveInfo, j);
        
        ds_list_replace(curInfo, CREEPS_SPAWNED, 0);
        ds_list_replace(curInfo, LAST_CREEP_SPAWN, 0);       
    }              
}