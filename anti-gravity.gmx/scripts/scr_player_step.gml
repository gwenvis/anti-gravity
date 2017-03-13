moveleft = keyboard_check(vk_left) || keyboard_check(ord('A'));
moveright = keyboard_check(vk_right) || keyboard_check(ord('D'));

script_execute(crs);

if(collision_rectangle(x-15+hspeed,y-31,x+15+hspeed,y+31,obj_Base_floor,false,true))
    hspeed = 0;
    
if(keyboard_check(ord('R')))
    room_restart();

scr_player_vertical();
