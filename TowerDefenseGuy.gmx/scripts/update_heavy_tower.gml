var tID = argument0;

with(tID)
{
    // test if we can attack yet
    var time = get_timer();
    
    // look for creep closest to player
    var creepTargetID = getFurthestCreepInRangeXYR(myGridX, myGridY, myRange);
    
    if (get_timer() >= myNextShotTime)
    {
       
        // if there was a creep in range
        if (creepTargetID != 0)
        {
            // spawn bullet attacking the creep
            var bulletID = instance_create(myGridX * Grid.gridPixelSize, 
                            myGridY * Grid.gridPixelSize,
                            heavyBullet); 
            // give bullet a target
            setBulletStats(bulletID, creepTargetID, myDamage);            
            
            // aim turret visuals accordingly
            // ...
            
            // update variables
            myNextShotTime = get_timer() + 1000 * myReloadTime;
        }
    }
    
    if (creepTargetID != 0) {
        // aim turret
        var tX = x;
        var tY = y;
        var cX;
        var cY;
        with(creepTargetID) {
            cX = x;
            cY = y;
        }
        
        with(myTurretId)
        {   
            image_angle = point_direction(tX, tY, cX, cY) - 90;
        }
    }
}
