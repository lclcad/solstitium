if(place_meeting(x, y, oPlayer)){
	if(!instance_exists(show_moon_cam)){
		show_moon_cam = instance_create_depth(0, 0, 0, oShowObj)
		with(show_moon_cam){
			obj_to_show = oLuaBright;
			x_offset = cam_width/2;
			y_offset = cam_height/6;
		}
	}
	//obj_to_moon.can_fade_in = true;
}

else{
	if(instance_exists(show_moon_cam)){
		instance_destroy(show_moon_cam);
	}
}