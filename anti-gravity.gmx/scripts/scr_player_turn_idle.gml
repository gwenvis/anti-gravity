/// scr_player_turn_idle(wanteddir)
if(current_state != state_turn)
{
    sprite_index = spr_player_turn;
    image_index = 0;
}
current_state = state_turn;
wantedDir = argument[0];
