sprite_index = spr_player_run_vault;
hspeed = 0;
vspeed = 0;

// A + t * (A - B)

xlerp = 0.1;
ylerp = 0.2;
view_xview[0] = (1 - xlerp) * view_xview[0] + xlerp * wantedpos;
view_yview[0] = (1 - ylerp) * view_yview[0] + ylerp * wantedypos;

if(image_index >= image_number-1)
{
    scr_set_state(state_player_running);
    x += 48 * dir;
    y -= 32 * falldir;
    hspeed = movespeed * dir;
    view_object[0] = obj_player;
}
