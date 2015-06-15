
// argument0 = bulletID
// argument1 = damage
// argument2 = normalDirX
// argument3 = normalDirY

with(argument0) {
    creepAlive = false;
    myDamage = argument1;
    finalDirPx = mySpeed * argument2;
    finalDirPy = mySpeed * argument3;
}