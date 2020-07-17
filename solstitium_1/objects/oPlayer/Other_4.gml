if(instance_exists(oDataCarrier)){
	hp = oDataCarrier.hp;
	targetEnter = oDataCarrier.targetEnter;
	
	instance_destroy(oDataCarrier);
	
	if(instance_exists(targetEnter)){
		x = targetEnter.x;
		y = targetEnter.y;
	}
}