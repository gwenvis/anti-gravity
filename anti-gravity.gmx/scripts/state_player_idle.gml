sprite_index = spr_player_idle;

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
