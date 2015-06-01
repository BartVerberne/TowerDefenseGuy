
// argument0 = bulletID
// argument1 = creepID
// argument2 = damage

with(argument0) {
    targetCreep = argument1;
    creepAlive = true;
    myDamage = argument2;
    addDistoryListener(argument1, argument0);
}
