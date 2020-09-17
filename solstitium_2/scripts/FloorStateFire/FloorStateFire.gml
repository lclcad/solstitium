function FloorStateFire() {
	if(alarm[0] <= room_speed && alarm[0] > 0){
		with(can_fire_area){
		if(place_meeting(x, y, oPlayer)){
			other.will_fire = true;
		}
	}

	}

	if(alarm[0] < 0){
		alarm[0] = room_speed*2;
	}
	if(warming_alpha == 1 && place_meeting(x, y, oPlayer)){
		with(oPlayer){
			PlayerHit();
		}
	}


}
