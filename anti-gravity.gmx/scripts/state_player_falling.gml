sprite_index = spr_player_fall;

if(scr_is_grounded())
{
    var o = scr_is_grounded(true);
    if(o != noone) {
    if(o.floortype == floortypes.dirt)
        audio_play_sound(dland, 1, false); }
    scr_set_state(state_player_land_to_idle);
}

scr_player_vertical()
