if(pause == true){
	if(!surface_exists(paused_surf)){
		if(paused_surf == -1){
			instance_deactivate_all(true);
		}
		paused_surf = surface_create(room_width, room_height);
		view_set_surface_id(view, paused_surf);
	}
	else{
		draw_surface(paused_surf, 0, 0);
	}
}