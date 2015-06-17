with(argument0)
{
    var scalar = argument1;
    
    myHealthMax += myHealthMax * global.creepHealthMP * (scalar - 1);
    myHealth += myHealthMax * global.creepHealthMP * (scalar - 1);
    mySpeed += mySpeed * global.creepSpeedMP * (scalar - 1);

    myScore += myScore * global.creepScoreMP * (scalar - 1);
    myGold += myGold * global.creepMoneyMP  * (scalar - 1);
}
