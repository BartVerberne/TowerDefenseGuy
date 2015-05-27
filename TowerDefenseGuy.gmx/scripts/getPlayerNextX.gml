
var add = 0;
if (Player.inMove)
{
    if (ds_queue_head(Player.moveQueue) == Player.X_STEP)
    {
        add = ds_queue_head(Player.moveQueueDir);
    }
}
return Player.myGridX + add;