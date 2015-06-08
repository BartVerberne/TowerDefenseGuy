var tID = argument0;

with(tID)
{
    // test if we can attack yet
    var time = get_timer();
    if (get_timer() >= myNextShotTime)
    {
        
        var creepClose = isCreepInRangeXYR(myGridX, myGridY, myRange);
    
        // if there was a creep in range
        if (creepClose)
        {
            var count = 8;
            for(var i = 0; i < count; i++)
            {
                var prog = i / count * global.PI * 2;
                var bulletID = instance_create(myGridX * Grid.gridPixelSize, myGridY * Grid.gridPixelSize, simpleBullet); 
                setBulletStatsNoCreep(bulletID, myDamage, sin(prog), cos(prog));
            }
            
            // aim turret visuals accordingly
            // ...
            
            // update variables
            myNextShotTime = get_timer() + 1000 * myReloadTime;
        }
    }
}
