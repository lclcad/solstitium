if(instance_exists(oCamera)){ //desativa a camera padrao
	instance_deactivate_object(oCamera);
}
xTo = clamp(obj_to_show.x - x_offset, 0, room_width - cam_width); //define a posição horizontal
yTo = clamp(obj_to_show.y - y_offset, 0, room_height - cam_height); //define a posição vertical

cur_x = camera_get_view_x(view); //pega a posição da camera horizontal
cur_y = camera_get_view_y(view); //pega a posição da camera vertical
	
	camera_set_view_pos(view,
					lerp(cur_x, xTo, cam_spd),
					lerp(cur_y, yTo, cam_spd));