hspeed += dir * accelspeed;

if(abs(hspeed) >= movespeed)
    hspeed = dir * movespeed;

sprite_index = spr_player_run;   

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
