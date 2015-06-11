if (!global.gameover) {

    fChance *= 1.0005;
    
    //show_debug_message(string(fChance));
    
    var toplace = global.CREEP_0;
    if (random(1) > 0.5) toplace = global.CREEP_1;
    
    if (random(1) < fChance) spawnCreepXYT(0, 0, toplace);
    if (random(1) < fChance) spawnCreepXYT(Grid.gridWidth - 1, 0, toplace);
    if (random(1) < fChance) spawnCreepXYT(0, Grid.gridHeight - 1, toplace);
    if (random(1) < fChance) spawnCreepXYT(Grid.gridWidth - 1, Grid.gridHeight - 1, toplace);

}
