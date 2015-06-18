
if(global.nlives > 0) { //if you still have lives
    global.nlives -= argument0; //reduce lives
}
if(global.nlives == 0){ //if lives = 0
    if (global.gameover == 0) { //if not game-overed
        global.gameover = 1; //gameover
    }
}
