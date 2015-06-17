
// general stats
curWave = 0;
prevCreeps = 0;
curWaveStartTime = 0;
waveCount = 10;
initialDelayMs = 10 * 1000;

//initially wave lists per wave
waves[waveCount - 1] = 0;
for(var i = 0; i < waveCount; i++) {
    waves[i] = ds_list_create();
}

NORTH_ENTRANCE = 0;
EAST_ENTRANCE = 1;
SOUTH_ENTRANCE = 2;
WEST_ENTRANCE = 3;

entranceValX[NORTH_ENTRANCE] = ceil((Grid.gridWidth-1) / 2);
entranceValY[NORTH_ENTRANCE] = 0;
entranceValX[EAST_ENTRANCE] = Grid.gridWidth - 1;
entranceValY[EAST_ENTRANCE] = ceil((Grid.gridHeight-1) / 2);
entranceValX[SOUTH_ENTRANCE] = ceil((Grid.gridWidth-1) / 2);
entranceValY[SOUTH_ENTRANCE] = Grid.gridHeight-1;
entranceValX[WEST_ENTRANCE] = 0;
entranceValY[WEST_ENTRANCE] = ceil((Grid.gridHeight-1) / 2);

var targetwave;
var entrance;
var creepType;
var creepCount;
var delay;
var spawninterval;
var creepScale;

ENTRANCE = 0;
CREEP_TYPE = 1;
CREEP_COUNT = 2;
SPAWN_DELAY = 3;
SPAWN_INTERVAL = 4;
LAST_CREEP_SPAWN = 5;
CREEPS_SPAWNED = 6;
CREEP_SCALER = 7;

// definition of waves

//Wave 1
targetwave = 0;
entrance = NORTH_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 1;

ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 2
targetwave = 1;

entrance = EAST_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 15;
delay = 0
spawninterval = 500 * 1000;
creepScale = 2;

ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 3
targetwave = 2;

entrance = SOUTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 4;

ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

// Wave 4
targetwave = 3;

entrance = WEST_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 5;

ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = NORTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000
spawninterval = 500 * 1000;
creepScale = 5;

ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 5
targetwave = 4;
entrance = EAST_ENTRANCE;
creepType = global.CREEP_2;
creepCount = 1;
delay = 0
spawninterval = 500 * 1000;
creepScale = 50;

ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 6
targetwave = 5;

entrance = NORTH_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = EAST_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = SOUTH_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 5000 * 1000
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = WEST_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 7
targetwave = 6;

entrance = NORTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = EAST_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = SOUTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = WEST_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 10;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 8
targetwave = 7;

entrance = NORTH_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 15;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = EAST_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 15;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = SOUTH_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 5000 * 1000
spawninterval = 500 * 1000;
creepScale = 15;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = WEST_ENTRANCE;
creepType = global.CREEP_0;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 80;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = NORTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 0
spawninterval = 500 * 1000;
creepScale = 15
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = EAST_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 15;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = SOUTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000
spawninterval = 500 * 1000;
creepScale = 15;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

entrance = WEST_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 10;
delay = 5000 * 1000;
spawninterval = 500 * 1000;
creepScale = 15;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 9
targetwave = 8; 
entrance = NORTH_ENTRANCE;
creepType = global.CREEP_1;
creepCount = 100;
delay = 0;
spawninterval = 500 * 1000;
creepScale = 20;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

//Wave 10
targetwave = 9;
entrance = NORTH_ENTRANCE;
creepType = global.CREEP_2;
creepCount = 1;
delay = 0;
spawninterval = 500 * 1000;
creepScale = 300;
ds_list_add(waves[targetwave], makeWave(entrance, creepType, creepCount, delay, spawninterval, creepScale));

// ---------------------
