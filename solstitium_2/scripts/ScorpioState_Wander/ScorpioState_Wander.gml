function ScorpioState_Wander(){
	sprite_index = sprMove;
	show_debug_message("chego no scorpio state wander");
	
	//se estiver no destino ou desistiu
	if((x == xTo) && (y == yTo)) || (timePassed	> enemyWanderDistance / scorpioSpeed)
	{
		hSpeed = 0;
		vSpeed = 0;
		
		//seta o destino alvo
		if(++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	}
	else //move towards new destination
	{
		timePassed++;
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		var _speedThisFrame = scorpioSpeed;
		if(_distanceToGo < scorpioSpeed) _speedThisFrame = _distanceToGo;
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(_speedThisFrame, dir);
		vSpeed = lengthdir_y(_speedThisFrame, dir);
		
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		//colisao e movimento
		ScorpioTileCollision();
	}
	
	//check for aggro
	if(++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if(instance_exists(oPlayer)) && (point_distance(x, y, oPlayer.x, oPlayer.y) <= enemyAggroRadius)
		{
			state = SCORPIOSTATE.CHASE;
			target = oPlayer;
		}
	}
}