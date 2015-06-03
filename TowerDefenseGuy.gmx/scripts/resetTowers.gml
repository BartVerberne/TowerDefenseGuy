with(Grid)
{
    for (var cY = 1; cY < gridHeight - 1; cY++) {
        for (var cX = 1; cX < gridWidth - 1; cX++) {
            var isTower = gridContent[cX, cY] > 0;
            
            if (isTower)
            {
                with(gridIds[cX, cY]) {
                    instance_destroy();
                }
            }
            
        }
    }
}
