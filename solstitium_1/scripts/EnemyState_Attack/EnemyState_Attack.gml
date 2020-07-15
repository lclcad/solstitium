var pl_dir = point_direction(x, y, oPlayer.x, oPlayer.y);

//direita
if(pl_dir == 360 || pl_dir == 0 || (pl_dir >= 315 && pl_dir <= 359) || (pl_dir > 0 && pl_dir <= 45))
{
	if(sprite_index != sEnemyAttackRight)
	{
		sprite_index = sEnemyAttackRight;
		image_index = 0;
		mask_index = sPlayerAttackRightHB;
		
	}
}