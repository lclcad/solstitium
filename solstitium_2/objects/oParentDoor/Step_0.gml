if(place_meeting(x, y, player) && (player.key_count > 0 && nokey == false)){
	show_debug_message("numero de chaves colidindo com porta: " + string(player.key_count));
	
	if(!door_has_eaten_key)
	{
		player.key_count -= 1;
		door_has_eaten_key = true;
	}
	changing_room = true;
}

if(place_meeting(x, y, player) && nokey) changing_room = true;

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