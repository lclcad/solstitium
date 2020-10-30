if(instance_exists(oDataCarrier)){
	hp = 10;
	key_count = oDataCarrier.key_count;
	dash_cooldown = oDataCarrier.dash_cooldown;
	targetEnter = oDataCarrier.targetEnter;
	last_pressed = oDataCarrier.last_pressed;
	rune_count = oDataCarrier.rune_count;
	
	instance_destroy(oDataCarrier);
	
	if(!instance_exists(oFadeIn)){
		instance_create_depth(0, 0, -9999, oFadeIn);
	}
	
	if(instance_exists(targetEnter)){
		x = targetEnter.x;
		y = targetEnter.y;
	}
}