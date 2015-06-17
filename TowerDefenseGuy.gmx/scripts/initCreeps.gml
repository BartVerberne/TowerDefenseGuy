

allCreeps = ds_list_create();

PlayerSpeedApprox = 4.85;

// creep 0 stats
global.CREEP_0 = 0;
global.Creep_0_speed = PlayerSpeedApprox * 0.5;
global.Creep_0_health = 100;
global.Creep_0_score = 10;
global.Creep_0_gold = 10;
global.Creep_0_player_treshold = Grid.gridPixelSize / 2.0;

// creep 1 stats
global.CREEP_1 = 1;
global.Creep_1_speed = PlayerSpeedApprox * 0.75;
global.Creep_1_health = 100;
global.Creep_1_score = 20;
global.Creep_1_gold = 20;
global.Creep_1_player_treshold = Grid.gridPixelSize / 2.0;

// creep 2 stats
global.CREEP_2 = 2;
global.Creep_2_speed = PlayerSpeedApprox;
global.Creep_2_health = 100;
global.Creep_2_score = 500;
global.Creep_2_gold = 200;
global.Creep_2_player_treshold = Grid.gridPixelSize / 2.0;

// scaling stats
global.creepHealthMP = 1;
global.creepScoreMP = 0.0;
global.creepMoneyMP = 0.0;
global.creepSpeedMP = 0.0;

global.bossMoneyMP = 1 / 3;