/// src_player_draw()
// a complete fucking mess.

if current_state == state_idle
{
    sprite_index = spr_player_idle;
    
    if moving 
    {
        image_index = 0;
        current_state = state_running;
    }
}
else if (current_state == state_running)
{
    sprite_index = spr_player_run;
    
    if (!moving)
    {
        current_state = state_stopping;
        sprite_index = spr_player_stopping;
        image_index = 0;
    }
}
else if(current_state == state_stopping)
{
    if(image_index >= image_number-1.2)
    {
        current_state = state_idle;
    }
}
else if(current_state == state_turn)
{
    if(image_index >= image_number-1.2)
    {
        dir = wantedDir;
        image_xscale = dir;
        sprite_index = spr_player_idle;
        current_state = state_idle;
    }
}
else if(current_state == state_turn_running)
{
    if(image_index >= image_number-1.2)
    {
        dir = wantedDir;
        image_xscale = dir;
        sprite_index = spr_player_run;
        image_index = 0;
        current_state = state_running;
    }
}

draw_self();
