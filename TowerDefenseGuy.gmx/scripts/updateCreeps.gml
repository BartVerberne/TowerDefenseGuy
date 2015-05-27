
for(var i = 0; i < ds_list_size(CreepCtrl.allCreeps); i++)
{
    with(ds_list_find_value(CreepCtrl.allCreeps, i))
    {
        // check end
        
        if (pixelDistToPlayerPxPy(x, y) < myPlayerReachTreshold) 
        {
            damagePlayer(myDamage);
            
            ds_list_delete( Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], 
                                ds_list_find_index(Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], id));
                                
            ds_list_delete( CreepCtrl.allCreeps, 
                                ds_list_find_index(CreepCtrl.allCreeps, id));
                                      
            instance_destroy();
        }
        else {                 
            // update progress:
    
            myProgress += mySpeed * delta_time * 0.000001;
            
            if (myProgress >= curTargetDist)
            {
                ds_list_delete( Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], 
                                ds_list_find_index(Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], id));
                myProgress -= curTargetDist;
                myGridX += curDirX;
                myGridY += curDirY;       
                           
                curDirX = Grid.gridPathsXdir[myGridX + 1, myGridY + 1];
                curDirY = Grid.gridPathsYdir[myGridX + 1, myGridY + 1];
                
                curTargetDist = 1;
                if (curDirX != 0 && curDirY != 0) 
                    curTargetDist = 1.41421;
                    
                ds_list_add(Grid.creepBlock[myGridX + curDirX + 1, myGridY + curDirY + 1], id);  
            }
            
            // determine its movement      
            if (curTargetDist > 0) {
                x = (myGridX + myProgress * curDirX / curTargetDist) * Grid.gridPixelSize;
                y = (myGridY + myProgress * curDirY / curTargetDist) * Grid.gridPixelSize;
            }
            else {
                x = myGridX * Grid.gridPixelSize;
                y = myGridY * Grid.gridPixelSize;
            }
            
            // Some creep specific behaviour:
        
            if (myType == CreepCtrl.CREEP_0)
            {
                // nothing special yet
            }
            else { // add other creep types
                //...
            }
        }
    }
}