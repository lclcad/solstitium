collidable = false;
player = oPlayer;
spd = 1;
hp = 1;
is_hitable = true;
image_angle = point_direction(x, y, player.x, player.y);
alarm[0] = room_speed*random_range(3, 5);