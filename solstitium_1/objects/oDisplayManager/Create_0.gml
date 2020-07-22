global.display_widht = display_get_width(); //pega a largura do monitor
global.display_height = display_get_height(); //pega a altura do monitor
global.aspect_ratio = global.display_widht/global.display_height; //define a proporção do monitor

for(i=1; i<=room_last; i++){
	if(room_exists(i)){
		view_wport[0] = global.display_widht;
		view_hport[0] = global.display_height;
	}
}

window_set_fullscreen(true); //seta a janela em fullscreen
surface_resize(application_surface, global.display_widht, global.display_height)

room_goto_next();