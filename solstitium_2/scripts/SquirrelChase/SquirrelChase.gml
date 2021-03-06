function SquirrelChase(){
	sprite_index = sprMove;
	
	squirrelSpeed = 0.8 + random_range(0.5, 0.7);
	
	if(instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		dir = point_direction(x, y, xTo, yTo);
		if(_distanceToGo < 30) //distancia minima para andar, pra nao ficar dançando
		{
			hSpeed = 0;
			vSpeed = 0;
		}
		
		else if(_distanceToGo > squirrelSpeed)
		{
			hSpeed = lengthdir_x(squirrelSpeed, dir);
			vSpeed = lengthdir_y(squirrelSpeed, dir);
		}
		
		else
		{
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);
		}
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		//colidir e mover
		SquirrelTileCollision();
	}
	
	if(attack_cooldown < 120){attack_cooldown += 1; can_enemy_attack = false;} //recarga do ataque
	if(attack_cooldown == 120) can_enemy_attack = true; //checa se houve o ataque
	
	/*
	var pl_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	var abs_dir = "";
	
	//direita
	if(pl_dir == 360 || pl_dir == 0 || (pl_dir > 270 && pl_dir <= 359) || (pl_dir > 0 && pl_dir <= 90))
	{
		abs_dir = "d";
	}
	
	//esquerda
	else if(pl_dir > 90 && pl_dir <= 270)
	{
		abs_dir = "e";
	}*/
	
	//checa se está perto o suficiente pra atacar
	if((instance_exists(target)) &&	(point_distance(x, y, target.x, target.y) <= enemyAttackRadius) && can_enemy_attack)
	{
		state = SQUIRRELSTATE.ATTACK;
		/*
		switch(abs_dir)
		{
			case "d": sprite_index = sEscorpiaoAttack; break;
			case "e": sprite_index = sEscorpiaoAttackLeft; break;
		}*/
		image_index = 0;
		image_speed = 1.0;
		//target is the player
		xTo += lengthdir_x(0, dir);
		yTo += lengthdir_y(0, dir);
	}
}