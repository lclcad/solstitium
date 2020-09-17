function PlantStateAtkFire() {
	oFloor.state = FLOORSTATE.FIRE;
	if(alarm[4] == -1){
		alarm[4] = room_speed*10;
		with(oFloor){
			with(can_fire_area){
				if(place_meeting(x, y, oPlayer)){
					other.will_fire = true;
				}
			alarm[0] = 0;
			}
		}
	}


}
