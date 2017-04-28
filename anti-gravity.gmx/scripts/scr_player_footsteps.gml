var flooredindex = floor(image_index);

var inst = collision_rectangle(x-14,y+31*falldir,x+14,y+35*falldir, 
    obj_Base_floor, false, true);

if(inst == noone) {
    lastframe = floor(image_index);
    exit
}

if(lastframe != flooredindex) {
    if(flooredindex == 4 || flooredindex == 9)
    {
        switch(inst.floortype)
        {
            case floortypes.concrete: 
                audio_play_sound(choose(cfootstep1, cfootstep2),
                100,false)
                break;
            case floortypes.dirt: 
                audio_play_sound(choose(dfootstep1, dfootstep2, dfootstep3),
                100,false)
                break;
        }
    }
}

lastframe = floor(image_index);
