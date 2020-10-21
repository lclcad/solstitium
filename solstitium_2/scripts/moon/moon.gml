function moon(){
	//player terminou o dialogo com a lua
	key_count += 1;
	
	with(oLua)
	{
		if(instance_exists(oDialogueLua)) instance_destroy(oDialogueLua);
		can_fade_out = true;
	}
	
	with(oWall)
	{
		can_fade_out = true;
	}	
	
	talking_to_moon = false;
}