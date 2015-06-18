if (!global.gameover) {

    if (global.gameMode == global.KILLERMODE) {

        fChance *= 1.0009;
        
        //show_debug_message(string(fChance));
        
        var toplace = global.CREEP_0;
        if (random(1) > 0.5) toplace = global.CREEP_1;
        
        var rnd_scalar = 1 + 20 * fChance;
        
        if (random(1) < fChance) spawnCreepXYTS(entranceValX[NORTH_ENTRANCE], entranceValY[NORTH_ENTRANCE], toplace, rnd_scalar);
        if (random(1) < fChance) spawnCreepXYTS(entranceValX[EAST_ENTRANCE], entranceValY[EAST_ENTRANCE], toplace, rnd_scalar);
        if (random(1) < fChance) spawnCreepXYTS(entranceValX[SOUTH_ENTRANCE], entranceValY[SOUTH_ENTRANCE], toplace, rnd_scalar);
        if (random(1) < fChance) spawnCreepXYTS(entranceValX[WEST_ENTRANCE], entranceValY[WEST_ENTRANCE], toplace, rnd_scalar);
        
    }
    else if (global.gameMode == global.WAVEMODE) {
    
        //show_debug_message("in wavemode");
        
        updateWaves();
    
    }
}
