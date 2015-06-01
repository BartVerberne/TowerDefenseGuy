
var creepId = argument0;
var damage = argument1;

with(creepId) {
    myHealth -= damage;

    if (myHealth < 0)
    {
        instance_destroy();   
        return 1;
    }
}

return 0;
