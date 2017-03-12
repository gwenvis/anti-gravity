/// scr_player_turn_running(movedir)
if(current_state != state_turn_running)
{
    sprite_index = spr_player_stoprun;
    image_index = 0;
}

current_state = state_turn_running;
wantedDir = argument[0];
