with(OB_Game) {
    while(ds_list_size(allProjectiles) > 0) {
        with(ds_list_find_value(allProjectiles, 0)) {
            instance_destroy();
        }
    }
}
