var b = false;

b = collision_rectangle(x,y, x+31*dir,y+31,obj_Base_floor,false,true);

if(b) {
    view_object[0] = noone;
    wantedpos = view_xview[0] + (48 * dir);
    wantedypos = view_yview[0]-32;
    scr_set_state(state_player_runjump);
}
