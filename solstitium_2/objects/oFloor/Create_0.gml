will_fire = false;
warming_alpha = 0;
fire_alpha = 0;
warming = false;
cooling = false;
smoke_y = 0;
smoke_frame = 0;
smoke_alpha = 1;
draw_smoke = false;

enum FLOORSTATE{
	INACTIVE,
	FIRE
}

state = FLOORSTATE.INACTIVE;

can_fire_area = instance_create_depth(x+sprite_width/2, y+sprite_height/2, -9999, oFloorCanFireArea);