if (!global.gameover) {

var time = get_timer();

var queueSize = ds_queue_size(moveQueue);
if (queueSize < 2)  
{
    var Wpressed = keyboard_check_pressed(ord('W')) || (keyboard_check(ord('W')) && queueSize == 0);
    var Apressed = keyboard_check_pressed(ord('A')) || (keyboard_check(ord('A')) && queueSize == 0);
    var Spressed = keyboard_check_pressed(ord('S')) || (keyboard_check(ord('S')) && queueSize == 0);
    var Dpressed = keyboard_check_pressed(ord('D')) || (keyboard_check(ord('D')) && queueSize == 0);
    

    var xDir = Dpressed * 2 - 1;  
    var yDir = Spressed * 2 - 1;
    
    var Xmove = Apressed != Dpressed;
    var Ymove = Wpressed != Spressed;
    
    if (Xmove && Ymove) {
        if (lastStep == Y_STEP) lastStep = X_STEP;      
        else lastStep = Y_STEP;
    }
    else if (Xmove) lastStep = X_STEP;
    else if (Ymove) lastStep = Y_STEP;
    
    if (Xmove || Ymove) {
        if (lastStep == X_STEP) {
            ds_queue_enqueue(moveQueue, X_STEP);
            ds_queue_enqueue(moveQueueDir, xDir);
        }
        else {
            ds_queue_enqueue(moveQueue, Y_STEP);
            ds_queue_enqueue(moveQueueDir, yDir);
        }
    }
}    


if (!inMove) {
    if (ds_queue_size(moveQueue) > 0) {
        var found = false;
        var foundStepDir;
        var foundStepType;
        
        while(!found && ds_queue_size(moveQueue) > 0)
        {
            foundStepDir = ds_queue_head(moveQueueDir);
            foundStepType = ds_queue_head(moveQueue);
        
            if (foundStepType == X_STEP)          
                 found = isGridFreeXYB(myGridX + foundStepDir, myGridY, false);
            else found = isGridFreeXYB(myGridX, myGridY + foundStepDir, false);
            
            if (!found)
            {
                ds_queue_dequeue(moveQueue);
                ds_queue_dequeue(moveQueueDir);
            }
        }
        
        if (found) {
            nextXstepTime = time + stepInterval;
            inMove = true;
            setPaths();
            
            if (foundStepType == X_STEP) {
                if (foundStepDir > 0) image_index = 2;
                else image_index = 1;
            }
            else {
                if (foundStepDir > 0) image_index = 3;
                else image_index = 0;
            }
        }
    }
}

if (inMove) {
    progress = 1.0 - (nextXstepTime - time) / stepInterval + progressCarry;
    var stepType = ds_queue_head(moveQueue);
    var stepDir = ds_queue_head(moveQueueDir);
    if (stepType == X_STEP) {
        if (progress > 0.999) {
            progressCarry = progress - 1;//(time - nextXstepTime) / stepInterval;
            ds_queue_dequeue(moveQueue);
            myGridX += ds_queue_dequeue(moveQueueDir);
            x = myGridX * Grid.gridPixelSize;
            inMove = false; 
        }
        else {
            x = (myGridX + progress * stepDir) * Grid.gridPixelSize;    
        }    
    }
    else {
        if (progress > 0.999)
        {
            progressCarry = progress - 1; //(time - nextXstepTime) / stepInterval;
            inMove = false;
            ds_queue_dequeue(moveQueue);
            myGridY += ds_queue_dequeue(moveQueueDir);
            y = myGridY * Grid.gridPixelSize;      
            setPaths();
        }
        else {
            y = (myGridY + progress * stepDir) * Grid.gridPixelSize;   
        }
    }
}
else 
{
    progress = 1;
    progressCarry = 0;
}

}
