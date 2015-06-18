
var creepId = argument0;
var damage = argument1;

with(creepId) {
    myHealth -= damage;
    
    if (myHealth <= 0)
    {
        global.points += myScore; //increase score
        global.gold += myGold; //increase gold
        instance_destroy(); 
        audio_play_sound(snd_gettinghit, 1, false);
        return 1;
    }
    /*else{ //creep damaged, but not dead
        audio_play_sound(snd_enemygettinghit, 1, false);
    }*/
    
}

return 0;
