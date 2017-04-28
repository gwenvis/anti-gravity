hspeed += dir * accelspeed;

if(abs(hspeed) >= movespeed)
    hspeed = dir * movespeed;

sprite_index = spr_player_run;   

if(!scr_is_grounded() && abs(vspeed) > 4)
{
    scr_set_state(state_player_falling_running);
    exit
}

if(keyboard_check(ord('Z')))
{
    if(scr_player_canjump()){
        scr_set_state(state_player_jump_prepare, image_index);
        exit;
    }
    else if(scr_player_canleap()) {
        scr_set_state(state_player_leap_prepare, image_index);
        exit;
    }
}
else if(togglegravity && scr_is_grounded())
{
    falldir = falldir * -1;
    scr_set_state(state_player_gravity_switch_running);
    exit
}

scr_player_footsteps();

if(moveleft)
{
    lastMoveTime = current_time;
    if(dir == 1)
        scr_player_turn_running(-1);    
}
else if(moveright)
{
    lastMoveTime = current_time;
    if(dir == -1)
        scr_player_turn_running(1);
}
else if(lastMoveTime + 175 < current_time)
    scr_set_state(state_player_stopping);
    
scr_player_vertical()
