image_speed = 1/5;

view_visible[0] = true;
view_hport[0] = 256;
view_wport[0] = 256;
view_enabled = true;

state_idle = 0;
state_running = 2;
state_turn = 3;
state_turn_running = 4;
state_stopping = 5;

current_state = state_idle;
moving = false;
movespeed = 4;
accelspeed = 0.15;
stopspeed = 0.12;
dir = 1;
wantedDir = 1;
lastMoveTime = 0;
grav = 1;
maxgrav = 6;
