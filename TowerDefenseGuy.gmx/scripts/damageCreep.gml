
var creepId = argument0;
var damage = argument1;

with(creepId) {
    myHealth -= damage;
    
    if (myHealth <= 0)
    {
        global.points += myScore; //increase score
        global.gold += myGold; //increase gold
        instance_destroy();   
        return 1;
    }
    
}

return 0;