image_speed = 1/5;
normal_imgspeed = 1/5;
fast_imgspeed = 1;

view_visible[0] = true;
view_hport[0] = 256;
view_wport[0] = 256;
view_enabled = true;

moveright = false;
moveleft = false;

movespeed = 3;
accelspeed = 0.15;
stopspeed = 0.12;

dir = 1;
falldir = 1;

vaulting = false;
wantedDir = 1;
lastMoveTime = 0;
grav = 0.333;
maxgrav = 10;
lastframe = 0;
dead = false;

checkpointx = x;
checkpointy = y;
hascheckpoint = false;
deadtimer = 2;

haskey = false;
keyids = ds_map_create();
global.colors = ds_map_create();
crs = state_player_idle;
