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
        
        updateWaves();
    
    }
}
