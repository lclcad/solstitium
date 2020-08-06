draw_sprite(sFloorBoss1Indv, 0, x, y);

switch(state){
	case FLOORSTATE.FIRE:
		draw_sprite_ext(sFloorBoss1Indv, 1, x, y, 1, 1, 0, c_white, warming_alpha);
		draw_sprite_ext(sFloorBoss1Indv, 2, x, y, 1, 1, 0, c_white, fire_alpha);
		if(warming && warming_alpha < 1){
			warming_alpha += 1/room_speed;
		}		
		if(warming && warming_alpha == 1 && fire_alpha <= 1){
			fire_alpha += 2/room_speed;
			draw_smoke = true;
		}
		if(fire_alpha >= 1 || cooling){
			cooling = true;
			warming = false;
			warming_alpha -= 1/room_speed;
			fire_alpha -= 2/room_speed;
		}
		if(draw_smoke){
			
			//smoke_alpha -= 0.5/room_speed;
		}
	}