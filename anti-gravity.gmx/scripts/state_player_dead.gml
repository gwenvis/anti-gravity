sprite_index = spr_player_dead;
dead = true
t = 0.02;
hspeed = (1 - t) * hspeed + t * 0;

deadtimer -= 1 / room_speed;
if(deadtimer <= 0)
{
    if(!hascheckpoint)
    {
        audio_stop_all();
        room_restart();
    }
    else
    {
        x = checkpointx;
        y = checkpointy;
        deadtimer = 2;
        scr_set_state(state_player_idle);
    }
    
}

scr_player_vertical();
