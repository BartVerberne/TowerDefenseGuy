var bulletID = argument0;

with (bulletID)
{
    // test out of map
    if (myHitDone || x > room_width * 1.2 || x < 0 - room_width * 0.2 || y > room_height * 1.2 || y < 0 - room_height * 0.2)
    {
        instance_destroy();
        return 0;
    }   
    else {
        var dt = (delta_time * 0.000001);
        
        // buffer the change (the actual x and y variables are dont update immediately)
        var xChange = 0;
        var yChange = 0;
        var travelDist = dt * mySpeed;
            
        if (creepAlive)
        {
            var targetPx;
            var targetPy;
            with (targetCreep)
            {
                targetPx = x;
                targetPy = y;      
            }
            var dx = targetPx - x;
            var dy = targetPy - y;
            var scalar = travelDist / sqrt(dx*dx+dy*dy);
        
            if (scalar >= 1)
            {
                // we reached the target
                // damage the creep and distory this bullet
                damageCreepRange(targetCreep, myDamage, myHitRadius);
                instance_destroy();
                return 0;
            }
            else {      
                xChange = dx * scalar;
                yChange = dy * scalar;
            }
        }    
        else
        {
            if (finalDirPx == 0 && finalDirPy == 0)
            {
                finalDirPx = lastCreepPx - x;
                finalDirPy = lastCreepPy - y;
                var scaler = mySpeed / sqrt(finalDirPx*finalDirPx+finalDirPy*finalDirPy);
                finalDirPx = finalDirPx * scaler;
                finalDirPy = finalDirPy * scaler;
            }
            xChange = finalDirPx * dt;
            yChange = finalDirPy * dt;
        }
        
        // test collision
        
        var newX = x + xChange;
        var newY = y + yChange;

        var collision = getCollisionCreep(newX, newY, myCollisionRadius);        
        if (collision != 0 && !(creepAlive && collision == targetCreep))
        {
            var hitPx;
            var hitPy;
            with(collision)
            {
                hitPx = x;
                hitPy = y;   
            }
            var dx = x - hitPx;
            var dy = y - hitPy;
            var dist = sqrt(dx*dx+dy*dy);
            if (dist < travelDist)
            {
                x += xChange * dist / travelDist;
                y += yChange * dist / travelDist;
            }
            else 
            {
                x = newX;
                y = newY;
            }
            
            damageCreepRange(collision, myDamage, myHitRadius);
            myHitDone = true;
        }
        else {
            x = newX;
            y = newY;
        }
    }
}

return 1;