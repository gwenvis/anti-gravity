moveleft = keyboard_check(vk_left) || keyboard_check(ord('A'));
moveright = keyboard_check(vk_right) || keyboard_check(ord('D'));
togglegravity = keyboard_check_pressed(ord('X'));

if(collision_rectangle(x-10+hspeed,y-31,x+10+hspeed,y+31,obj_spikes,false,true))
    scr_set_state(state_player_dead);
    
script_execute(crs);

if(collision_rectangle(x-32,y-32,x+32,y+32,obj_speed,false,true))
{
    if(crs == state_player_running) {
        hspeed = movespeed * 3 * dir;
        image_speed = fast_imgspeed;
    }
    else
    {
        image_speed = normal_imgspeed;
    }
}
else
    image_speed = normal_imgspeed;

if(collision_rectangle(x-10+hspeed,y-31,x+10+hspeed,y+31,obj_Base_floor,false,true))
    hspeed = 0;
    
if(keyboard_check(ord('R'))) {
    audio_stop_all();
    room_restart();
}
