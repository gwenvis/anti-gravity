var s = abs(hspeed);
s -= stopspeed;
if(s <= 0) s = 0;
hspeed = dir*s;
