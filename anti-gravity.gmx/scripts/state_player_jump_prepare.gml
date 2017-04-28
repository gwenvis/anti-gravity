var b = false;

b = collision_rectangle(x,y, x+31*dir,y+31*falldir,obj_Base_floor,false,true);
hspeed = movespeed * dir;

if(b) {
    view_object[0] = noone;
    wantedpos = view_xview[0] + (48 * dir);
    wantedypos = view_yview[0]-32*falldir;
    
    if(image_index >= 1 && image_index <= 4)
        scr_set_state(state_player_runjump, 2);
    else
        scr_set_state(state_player_runjump);
}

scr_player_vertical()
