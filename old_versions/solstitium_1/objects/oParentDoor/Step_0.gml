if(place_meeting(x, y, oPlayer)){
	changing_room = true;
}
switch(changing_room){
	case false: break;
	case true:
		oPlayer.targetEnter = targetEnter;
	
		if(!instance_exists(oFadeOut)){
			fadeout = instance_create_depth(0, 0, -9999, oFadeOut);
		}
		if(fadeout.current_alpha >=1){
			instance_destroy(fadeout);
			room_goto(targetRoom);
		}
		break;
}