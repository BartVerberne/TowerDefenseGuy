var curTime = get_timer();

// if there are no creeps, we go to the next wave (initial empty wave -1)

if (curWave < waveCount)
if (checkWaveEnd())
{
    curWave += 1;
    endWave();
    curWaveStartTime = curTime;
    
    if (curWave < waveCount) {
        show_debug_message("start new wave : " + string(curWave));
    
        var waveInfo = waves[curWave];
        var waveInfoCount = ds_list_size(waveInfo);
        for(var j = 0; j < waveInfoCount; j++)
        {
            var curInfo =  ds_list_find_value(waveInfo, j);
            
            var delay = ds_list_find_value(curInfo, SPAWN_DELAY);
            var spawninterval = ds_list_find_value(curInfo, SPAWN_INTERVAL);
            
            ds_list_replace(curInfo, LAST_CREEP_SPAWN, curTime + delay - spawninterval);  
        }      
    }
    
    if (curWave == waveCount) {
        // all waves cleared now what?
    }
}

if (curWave < waveCount)
{    
    var waveInfo = waves[curWave];
    var waveInfoCount = ds_list_size(waveInfo);
    for(var j = 0; j < waveInfoCount; j++)
    {
        var curInfo =  ds_list_find_value(waveInfo, j);
        // loop over all added wave info
        // reconstruct data
        
        var creepCount = ds_list_find_value(curInfo, CREEP_COUNT);
        var delay = ds_list_find_value(curInfo, SPAWN_DELAY);
        var spawninterval = ds_list_find_value(curInfo, SPAWN_INTERVAL);
        var lastCreepSpawn = ds_list_find_value(curInfo, LAST_CREEP_SPAWN);
        var creepsSpawned = ds_list_find_value(curInfo, CREEPS_SPAWNED);
        
        if (creepsSpawned < creepCount)
        {
            if (curTime > lastCreepSpawn + spawninterval)
            {
                ds_list_replace(curInfo, LAST_CREEP_SPAWN, curTime);
                ds_list_replace(curInfo, CREEPS_SPAWNED, creepsSpawned+1);
                
                // spawn a creep
                var entrance = ds_list_find_value(curInfo, ENTRANCE);
                var creepType = ds_list_find_value(curInfo, CREEP_TYPE);
                var scalar = ds_list_find_value(curInfo, CREEP_SCALER);
                
                spawnCreepXYTS(entranceValX[entrance], entranceValY[entrance], creepType, scalar);
            }
        }        
    }                
}
