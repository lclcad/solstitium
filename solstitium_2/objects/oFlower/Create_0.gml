collidable = true;
time_to_spike = room_speed*1.5;

enum FLOWERSTATE{
	INACTIVE,
	SPIKE,
	POISON,
	HIT,
}

state = FLOWERSTATE.INACTIVE;