//checagem do teclado
if(keyboard_check_pressed(vk_escape)){
	if(pause == false){
		pause = true;
	}

	else if(pause == true){
		game_end();
	}
}

if(keyboard_check(vk_anykey) - keyboard_check(vk_escape) || mouse_check_button(mb_any)){
	if(pause == true){
		pause = false;
	}
}

//
if(pause == false){
	instance_activate_all();
	surface_free(paused_surf);
	paused_surf = -1;
}