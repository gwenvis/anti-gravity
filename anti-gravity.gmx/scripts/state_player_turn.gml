sprite_index = spr_player_turn;
vspeed = 0;
hspeed = 0;
if(image_index >= image_number-1)
{
   dir = wantedDir;
   image_xscale = dir;
   scr_set_state(state_player_idle);
}
