Grid.gridIds[myGridX, myGridY] = Grid.GRID_NO_ID;
Grid.gridContent[myGridX, myGridY] = Grid.GRID_EMPTY;

if (myTurretId != 0)
{
    with(myTurretId) instance_destroy();
}