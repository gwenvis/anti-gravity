sprite_index = spr_player_stoprun;
scr_player_slowdown();
if(image_index >= image_number-1)
{
   dir = wantedDir;
   image_xscale = dir;
   scr_set_state(state_player_running);
}
