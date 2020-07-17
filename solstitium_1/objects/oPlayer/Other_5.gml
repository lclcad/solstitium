if(!instance_exists(oDataCarrier)){
	instance_create_depth(0, 0, 0, oDataCarrier);
}

oDataCarrier.hp = hp;
oDataCarrier.targetEnter = targetEnter;