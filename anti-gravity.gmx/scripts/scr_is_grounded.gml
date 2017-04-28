/// scr_is_grounded([returnobjectinstead])
if(argument_count == 0)
    return collision_rectangle(x-10,y+32*falldir,x+10,y+34*falldir,obj_Base_floor,false,true) != noone;
else if(argument[0] == true)
    return collision_rectangle(x-4,y+32*falldir,x+4,y+34*falldir,obj_Base_floor,false,true);;
    
