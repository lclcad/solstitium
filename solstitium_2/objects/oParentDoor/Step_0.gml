if(place_meeting(x, y, player)) show_debug_message("COLIDIU COM A PORTA, nde chaves: " + string(player.key_count));
if(place_meeting(x, y, player) && player.key_count > 0){
	show_debug_message("COLIDIU COM A PORTA E TEM MAIS DE 0 CHAVES");
	show_debug_message("numero de chaves colidindo com porta: " + string(player.key_count));
	player.key_count -= 1;
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