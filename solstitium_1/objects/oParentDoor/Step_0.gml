if(place_meeting(x, y, oPlayer)){
	oPlayer.targetEnter = targetEnter;
	
	if(!instance_exists(oFadeOut)){
		fadeout = instance_create_depth(0, 0, -9999, oFadeOut);
	}
	if(fadeout.image_alpha >=1){
		room_goto(targetRoom);
		instance_destroy(fadeout);
	}

}