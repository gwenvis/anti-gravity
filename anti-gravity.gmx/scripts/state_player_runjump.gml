sprite_index = spr_player_run_vault;
hspeed = 0;
view_yview[0] -= 1;

if(view_yview[0] < wantedypos)
    view_yview[0] = wantedypos;

// A + t * (A - B)

view_xview[0] = (1 - 0.1) * view_xview[0] + 0.1 * wantedpos;
     
show_debug_message(dir)

if(image_index >= image_number-1)
{
    scr_set_state(state_player_running);
    x += 48 * dir;
    y -= 32;
    hspeed = movespeed * dir;
    view_object[0] = obj_player;
}
