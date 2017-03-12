moveleft = keyboard_check(vk_left) || keyboard_check(ord('A'));
moveright = keyboard_check(vk_right) || keyboard_check(ord('D'));

if(moveleft)
{
    lastMoveTime = current_time;
    if(current_state == state_idle) {
        if(dir == 1)
            scr_player_turn_idle(-1);
        else
        {
            current_state = state_running;
            moving = true;
        }
    }
    else if(current_state == state_running && dir == 1)
        scr_player_turn_running(-1);
}
else if(moveright)
{
    lastMoveTime = current_time;
    if(current_state == state_idle) {
        if(dir == -1)
            scr_player_turn_idle(1);
        else {
        current_state = state_running;
        moving = true;
        }
    }
    else if(current_state == state_running && dir == -1)
        scr_player_turn_running(1);
}
else if(lastMoveTime + 175 < current_time)
{
    moving = false;
}   

show_debug_message("last move time: " + string(lastMoveTime + 200));
if(current_state == state_running) 
{
    hspeed += dir * accelspeed;
    if(abs(hspeed) >= movespeed)
        hspeed = dir * movespeed;
}
else if(current_state == state_stopping || current_state == state_turn_running)
{
    var s = abs(hspeed);
    show_debug_message(s);
    s -= stopspeed;
    if(s <= 0) s = 0;
    hspeed = dir*s;
}
else
{
    hspeed = 0;
}

if(collision_rectangle(x-15+hspeed,y-31,x+15+hspeed,y+31,obj_Base_floor,false,true))
    hspeed = 0;
    
if(keyboard_check(ord('R')))
    room_restart();

scr_player_vertical();
