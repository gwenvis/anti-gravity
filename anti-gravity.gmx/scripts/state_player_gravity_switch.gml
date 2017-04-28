/// nice dude
sprite_index = spr_player_switch;

if(image_index >= image_number - 1)
{
    sprite_index = spr_player_fall;
    scr_set_state(state_player_falling);
    image_yscale = -image_yscale;
}

scr_player_vertical();
