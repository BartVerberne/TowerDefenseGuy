with(OB_Game) {
    while(ds_list_size(allCreeps) > 0) {
        with(ds_list_find_value(allCreeps, 0)) {
            instance_destroy();
        }
    }
}
