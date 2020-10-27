function ScorpioChase(){
	sprite_index = sprMove;
	
	if(instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x, y, xTo, yTo);
		dir = point_direction(x, y, xTo, yTo);	
		if(_distanceToGo > scorpioSpeed)
		{
			hSpeed = lengthdir_x(scorpioSpeed, dir);
			vSpeed = lengthdir_y(scorpioSpeed, dir);
		}
		else
		{
			hSpeed = lengthdir_x(_distanceToGo, dir);
			vSpeed = lengthdir_y(_distanceToGo, dir);
		}
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		//colidir e mover
		ScorpioTileCollision()
	}
	
	if(attack_cooldown < 120){attack_cooldown += 1; can_enemy_attack = false;} //recarga do ataque
	if(attack_cooldown == 120) can_enemy_attack = true; //checa se houve o ataque
	
	//checa se está perto o suficiente pra atacar
	if((instance_exists(target)) &&	(point_distance(x, y, target.x, target.y) <= enemyAttackRadius) && can_enemy_attack)
	{
		state = SCORPIOSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1.0;
		//target is the player
		xTo += lengthdir_x(0, dir);
		yTo += lengthdir_y(0, dir);
	}
}