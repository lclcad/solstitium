if(instance_exists(oDataCarrier)){
	hp = oDataCarrier.hp;
	key_count = oDataCarrier.key_count;
	dash_cooldown = oDataCarrier.dash_cooldown;
	targetEnter = oDataCarrier.targetEnter;
	last_pressed = oDataCarrier.last_pressed;
	
	instance_destroy(oDataCarrier);
	
	if(!instance_exists(oFadeIn)){
		instance_create_depth(0, 0, -9999, oFadeIn);
	}
	
	if(instance_exists(targetEnter)){
		x = targetEnter.x;
		y = targetEnter.y;
	}
}