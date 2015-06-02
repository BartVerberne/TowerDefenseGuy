
var creepList = OB_Game.allCreeps;

var listSize = ds_list_size(creepList)

var creepBlock = Grid.creepBlock;
var gridPathsXdir = Grid.gridPathsXdir;
var gridPathsYdir = Grid.gridPathsYdir;
var gridPixelSize = Grid.gridPixelSize;

for(var i = 0; i < listSize; i++)
{
    with(ds_list_find_value(creepList, i))
    {
        // check end
        if (pixelDistToPlayerPxPy(x, y) < myPlayerReachTreshold) 
        {
            damagePlayer(myDamage);
            
            ds_list_delete( creepBlock[myGridX + curDirX, myGridY + curDirY], 
                                ds_list_find_index(creepBlock[myGridX + curDirX, myGridY + curDirY], id));
                                
            ds_list_delete( creepList, 
                                ds_list_find_index(creepList, id));
                                
            listSize -= 1;
            i--;
                                      
            instance_destroy();
        }
        else {                 
            // update progress:
    
            myProgress += mySpeed * delta_time * 0.000001;
            
            if (myProgress >= curTargetDist)
            {
                ds_list_delete( creepBlock[myGridX + curDirX, myGridY + curDirY], 
                                ds_list_find_index(creepBlock[myGridX + curDirX, myGridY + curDirY], id));
                myProgress -= curTargetDist;
                myGridX += curDirX;
                myGridY += curDirY;       
                           
                curDirX = gridPathsXdir[myGridX, myGridY];
                curDirY = gridPathsYdir[myGridX, myGridY];
                
                curTargetDist = 1;
                if (curDirX != 0 && curDirY != 0) 
                    curTargetDist = 1.41421;
                    
                ds_list_add(creepBlock[myGridX + curDirX, myGridY + curDirY], id);  
            }
            
            // determine its movement      
            if (curTargetDist > 0) {
                x = (myGridX + myProgress * curDirX / curTargetDist) * gridPixelSize;
                y = (myGridY + myProgress * curDirY / curTargetDist) * gridPixelSize;
            }
            else {
                x = myGridX * gridPixelSize;
                y = myGridY * gridPixelSize;
            }
            
            // Some creep specific behaviour:
        
            if (myType == OB_Game.CREEP_0)
            {
                // nothing special yet
            }
            else { // add other creep types
                //...
            }
        }
    }
}
