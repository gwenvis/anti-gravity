/// scr_key_random_color(keyid)

global.colors[? argument[0]] = make_color_rgb(irandom(255),irandom(255),irandom(255));
keyid = argument[0];
