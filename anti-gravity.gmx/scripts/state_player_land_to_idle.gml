sprite_index = spr_player_land_to_idle;
hspeed = 0;
if (image_index >= image_number - 1)
{
    scr_set_state(state_player_idle);
}

scr_player_vertical();
