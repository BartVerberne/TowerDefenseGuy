with (Grid)
{
    for (var cY = 0; cY < gridHeight; cY++) {
        for (var cX = 0; cX < gridWidth; cX++) {
            var gc = gridContent[cX, cY];
            if (gc > 0) with(gridIds[cX,cY]) if(toBeDeleted) instance_destroy(); 
        }
    }
}
