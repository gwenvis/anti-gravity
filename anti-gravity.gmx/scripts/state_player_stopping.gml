scr_player_slowdown();
sprite_index = spr_player_stopping;
if(image_index >= image_number-1.5)
{
    scr_set_state(state_player_idle);
}  
