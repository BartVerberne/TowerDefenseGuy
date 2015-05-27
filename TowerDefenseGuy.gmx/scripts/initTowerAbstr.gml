myGridX = floor(x / Grid.gridPixelSize);
myGridY = floor(y / Grid.gridPixelSize);
Grid.gridIds[myGridX, myGridY] = id;

// overide:

myType = 0;

// set 
//      Grid.gridContent[myGridX, myGridY] 
// to 
//      myType