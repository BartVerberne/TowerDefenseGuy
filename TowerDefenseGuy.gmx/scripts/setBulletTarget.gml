
// argument0 = bulletID
// argument1 = creepID

with(argument0) {
    targetCreep = argument1;
    creepAlive = true;
    addDistoryListener(argument1, argument0);
}

