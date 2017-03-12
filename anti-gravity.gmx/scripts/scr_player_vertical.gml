
vspeed += grav;
if(vspeed > maxgrav)
    vspeed = maxgrav;
    
if(place_meeting(x, y+vspeed, obj_Base_floor))
    vspeed = 0;
