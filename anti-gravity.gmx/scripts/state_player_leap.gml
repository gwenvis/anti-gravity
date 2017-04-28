sprite_index = spr_player_leap;
vspeed = 0;
hspeed = (MOVE_SPEED + 1) * dir;


if(ANIM_END) {
    scr_set_state(state_player_running);
}
