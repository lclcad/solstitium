dir = point_direction(x, y, player.x, player.y+8);
image_angle = dir;
direction = image_angle;
speed = spd;

if(place_meeting(x, y, player)){
	with(player){
		PlayerHit();
	}
	instance_destroy();
}
switch(hp){
	case 0: instance_destroy();
}