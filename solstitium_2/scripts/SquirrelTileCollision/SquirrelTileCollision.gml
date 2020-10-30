function SquirrelTileCollision(){
	moveX = lengthdir_x(squirrelSpeed, dir); //define o movimento horizontal
	moveY = lengthdir_y(squirrelSpeed, dir); //define o movimento vertical
		
	var collisionH = instance_place(x + moveX, y, collision);
		if((collisionH != noone && collisionH != oPlayer) && collisionH.collidable) //checa se há colisão horizontal
		{
			while(!place_meeting(x+sign(moveX), y, collision))
			{
				x += sign(moveX);
			}
			moveX = 0;
		}
		else{x += moveX;}//movimento horizontal

		var collisionV = instance_place(x, y + moveY, collision);
		if(collisionV != noone && collisionV.collidable) //checa se há colisão vertical
		{
			while(!place_meeting(x, y+sign(moveY), collision))
			{
				y += sign(moveY);
			}
			moveY = 0;
		}
		else{y += moveY;}//movimento vertical
	
}