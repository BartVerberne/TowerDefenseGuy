var tID = argument0;

with(tID)
{
    // test if we can attack yet
    var time = get_timer();
    if (get_timer() >= myNextShotTime)
    {
        // look for creep closest to player
        var creepTargetID = getFurthestCreepInRangeXYR(myGridX, myGridY, myRange);
        
        // if there was a creep in range
        if (creepTargetID != 0)
        {
            // spawn bullet attacking the creep
            var bulletID = instance_create(myGridX * Grid.gridPixelSize, 
                            myGridY * Grid.gridPixelSize,
                            simpleBullet); 
            // give bullet a target
            setBulletStats(bulletID, creepTargetID, myDamage);            
            
            // aim turret visuals accordingly
            // ...
            
            // update variables
            myNextShotTime = get_timer() + 1000 * myReloadTime;
        }
    }
}