
sprite_index = spr_player_idle;

if(togglegravity && scr_is_grounded())
{
    falldir = -falldir;
    scr_set_state(state_player_gravity_switch);
    exit
}

if(!scr_is_grounded() && abs(vspeed) > 4)
{
    scr_set_state(state_player_falling);
    exit
}

if(moveleft)
{
    if(dir == 1)
        scr_player_turn_idle(-1);
    else
        scr_set_state(state_player_running);
       
}
else if(moveright)
{
    if(dir == -1)
        scr_player_turn_idle(1);
    else
        scr_set_state(state_player_running);
}

if(!scr_is_grounded())
{
    scr_set_state(state_player_falling);
}

scr_player_vertical()
