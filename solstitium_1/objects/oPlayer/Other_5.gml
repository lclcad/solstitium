if(!instance_exists(oDataCarrier)){
	instance_create_depth(0, 0, 0, oDataCarrier);
}

oDataCarrier.hp = hp;
oDataCarrier.dash_cooldown = dash_cooldown;
oDataCarrier.targetEnter = targetEnter;