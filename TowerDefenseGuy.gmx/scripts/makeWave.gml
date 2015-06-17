var entrance = argument0;
var creepType = argument1;
var creepCount = argument2;
var delay = argument3;
var spawninterval = argument4;
var lastCreepSpawn = 0;
var creepsSpawned = 0;
var scalar = argument5;

var wave = ds_list_create();
ds_list_add(wave, entrance);
ds_list_add(wave, creepType);
ds_list_add(wave, creepCount);
ds_list_add(wave, delay);
ds_list_add(wave, spawninterval);
ds_list_add(wave, lastCreepSpawn);
ds_list_add(wave, creepsSpawned);
ds_list_add(wave, scalar);

return wave;
