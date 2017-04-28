hspeed = (MOVE_SPEED) * dir;
vspeed=0
scr_player_footsteps();

if((image_index >= 0 && image_index < 1) || (image_index >= 4 && image_index <= 5))
{
    var o = scr_is_grounded(true);   
    if(o != noone && o.floortype == floortypes.dirt)
        audio_play_sound(djump, 1, false);
    else {
        audio_play_sound(cjump, 1, false); }
    scr_set_state(state_player_leap);
}
