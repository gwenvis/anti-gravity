sprite_index = spr_player_land_to_run;

if (image_index >= image_number - 1)
{
    scr_set_state(state_player_running);
}

scr_player_vertical();
