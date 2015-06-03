

fChance *= 1.0005;

//show_debug_message(string(fChance));

if (random(1) < fChance) spawnCreepXYT(0, 0, OB_Game.CREEP_0);
if (random(1) < fChance) spawnCreepXYT(Grid.gridWidth - 1, 0, OB_Game.CREEP_0);
if (random(1) < fChance) spawnCreepXYT(0, Grid.gridHeight - 1, OB_Game.CREEP_0);
if (random(1) < fChance) spawnCreepXYT(Grid.gridWidth - 1, Grid.gridHeight - 1, OB_Game.CREEP_0);


