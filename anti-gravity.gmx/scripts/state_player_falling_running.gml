sprite_index = spr_player_fall;

if(abs(hspeed) < 1)
{
    scr_set_state(state_player_falling);
}

var o = scr_is_grounded(true);
if(o != noone)
{
    if(o.floortype == floortypes.concrete)
        audio_play_sound(croll, 1, false);
    else if(o.floortype == floortypes.dirt)
        audio_play_sound(droll, 1, false);
    
    scr_set_state(state_player_land_to_run);
}

scr_player_vertical()
