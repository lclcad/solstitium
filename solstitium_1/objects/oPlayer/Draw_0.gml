if(!is_hitable && alarm[0] > -1){
	if(flash < 3){
		gpu_set_fog(true, c_white, 0, 0);
		draw_self();
		gpu_set_fog(false, c_white, 0, 0);
	}
	else if(flash < 6){
		draw_self();
	}
	else{
		flash = -1;
	}
	flash ++;
}
else{
	draw_self();
}