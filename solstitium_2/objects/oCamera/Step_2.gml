if(instance_exists(follow)) //se instancia do player
{
	xTo = clamp(follow.x - cam_width/2, 0, room_width - cam_width); //define a posição horizontal
	yTo = clamp(follow.y - cam_height/2, 0, room_height - cam_height); //define a posição vertical
	
	cur_x = camera_get_view_x(view); //pega a posição da camera horizontal
	cur_y = camera_get_view_y(view); //pega a posição da camera vertical	
	
	//seta a posição da camera
	camera_set_view_pos(view,
						lerp(cur_x, xTo, cam_spd),
						lerp(cur_y, yTo, cam_spd));
}
