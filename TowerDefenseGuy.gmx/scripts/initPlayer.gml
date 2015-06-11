myGridX = 4;
myGridY = 4;

X_STEP = 0;
Y_STEP = 1;

image_speed = 0;
image_index = 3;

stepInterval = 180 * 1000; // in microseconds
nextXstepTime = 0;
progress = 0;
progressCarry = 0;
lastStep = Y_STEP;
inMove = false;

moveQueue = ds_queue_create();
moveQueueDir = ds_queue_create();

depth = 2;

x = myGridX * Grid.gridPixelSize;
y = myGridY * Grid.gridPixelSize;

setPaths();
