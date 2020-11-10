function moon(){
	//player terminou o dialogo com a lua
	//key_count += 1;
	if(instance_exists(oDialogueLua)) rune_count = 1;
	if(instance_exists(oDialogueLua2)) rune_count = 2;
	if(instance_exists(oDialogueLua3)) rune_count = 3;
	
	with(oLua)
	{
		if(instance_exists(oDialogueLua)) instance_destroy(oDialogueLua);
		if(instance_exists(oDialogueLua2)) instance_destroy(oDialogueLua2);
		if(instance_exists(oDialogueLua3)) instance_destroy(oDialogueLua3);
		can_fade_out = true;
	}
	
	with(oWall)
	{
		can_fade_out = true;
	}	
	
	talking_to_moon = false;
}