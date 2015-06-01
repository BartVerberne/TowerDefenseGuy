var nodes = argument0;
var X = argument1;
var Y = argument2;

//show_debug_message("add breadth search node : " + string(X) + ", " + string(Y));

if (gridSeekBlock[X, Y] == NOT_VISITED && isGridFreeXYB(X, Y, false))
{
    gridSeekBlock[X, Y] = VISITED;
    ds_list_add(nodes, X, Y);
}
