/// scr_player_canjump
// nice

//xz/yz is the zero point without the sprite offset
var xz = x - sprite_xoffset;
var yz = y - sprite_yoffset;

// if there is a place free 64 pixels away, where the end location might be.
var placefree = !collision_rectangle(xz+64*dir, yz, xz+(64+31)*dir, yz+31, 
                    obj_Base_floor, false, true);
   
// also check if there is a block below it.                 
placefree = placefree &&
    collision_rectangle(xz+64*dir, yz+32, xz+(64+31)*dir, yz+63,
        obj_Base_floor, false, true);
        
// next see if there is no block 32 pixels 
// in front of the player.
placefree = placefree && 
    !collision_rectangle(x,y,x+32*dir,y+31, 
        obj_Base_floor, false, true);

return placefree;
