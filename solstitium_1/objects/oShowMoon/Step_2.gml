if(place_meeting(x, y, oPlayer)){
	if(instance_exists(oCamera)){
		instance_destroy(oCamera)
	}
	xTo = clamp(oLua.x - cam_width/2, 0, room_width - cam_width); //define a posição horizontal
	yTo = clamp(oLua.y - cam_height/6, 0, room_height - cam_height); //define a posição vertical

	cur_x = camera_get_view_x(view); //pega a posição da camera horizontal
	cur_y = camera_get_view_y(view); //pega a posição da camera vertical
	
		camera_set_view_pos(view,
						lerp(cur_x, xTo, cam_spd),
						lerp(cur_y, yTo, cam_spd));
	
}
else{
	if(!instance_exists(oCamera)){
		instance_create_depth(oPlayer.x, oPlayer.y, 0, oCamera);
	}
}