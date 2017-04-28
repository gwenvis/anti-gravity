/// src_set_state(state, [image_index])
if(argument_count == 2)
    image_index = argument[1];
else
    image_index = 0;
crs = argument[0];
script_execute(crs);
