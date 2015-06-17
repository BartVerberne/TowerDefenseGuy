if (!global.gameover) {

    if (global.gameMode == global.KILLERMODE) {

        fChance *= 1.0009;
        
        //show_debug_message(string(fChance));
        
        var toplace = global.CREEP_0;
        if (random(1) > 0.5) toplace = global.CREEP_1;
        
        var rnd_scalar = 1;
        
        if (random(1) < fChance) spawnCreepXYTS(0, 0, toplace, rnd_scalar);
        if (random(1) < fChance) spawnCreepXYTS(Grid.gridWidth - 1, 0, toplace, rnd_scalar);
        if (random(1) < fChance) spawnCreepXYTS(0, Grid.gridHeight - 1, toplace, rnd_scalar);
        if (random(1) < fChance) spawnCreepXYTS(Grid.gridWidth - 1, Grid.gridHeight - 1, toplace, rnd_scalar);
        
    }
    else if (global.gameMode == global.WAVEMODE) {
    
        //show_debug_message("in wavemode");
    
        var curTime = get_timer();
        
        // if there are no creeps, we go to the next wave (initial empty wave -1)
        
        var creepCount = ds_list_size(allCreeps);
        
        if (creepCount == 0 && prevCreeps != 0)
        {
            curWave += 1;
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
                        ds_list_replace(curInfo, 5, curTime);
                        ds_list_replace(curInfo, 6, creepsSpawned+1);
                        
                        // spawn a creep
                        var entrance = ds_list_find_value(curInfo, ENTRANCE);
                        var creepType = ds_list_find_value(curInfo, CREEP_TYPE);
                        var scalar = ds_list_find_value(curInfo, CREEP_SCALER);
                        
                        spawnCreepXYTS(entranceValX[entrance], entranceValY[entrance], creepType, scalar);
                    }
                }        
            }                
        }
        
        prevCreeps = ds_list_size(allCreeps);
    
    }
}
