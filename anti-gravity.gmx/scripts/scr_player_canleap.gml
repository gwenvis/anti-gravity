var canleap;

// if there's no block in front of the player.

canleap = !collision_rectangle(x+32*dir, y+32*falldir,
                                x+64*dir, y+64*falldir, obj_Base_floor, false, true);

// if there is a block where the player will land
                                
canleap = canleap &&
collision_rectangle(x+64*dir, y+32*falldir,
                    x+96*dir, y+64*falldir, obj_Base_floor,false,true);                     
                                
show_debug_message(canleap);                                                              
return canleap;

