hsp = 0;
vsp = 0;

//setar sprite de acordo com direcao de ataque
if(last_pressed == "right" || last_pressed == "up")
{
	last_pressed = "right";
	if(sprite_index != sPlayerAttackRight)
	{
		sprite_index = sPlayerAttackRight;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

mask_index = sPlayerAttackRightHB;
}

else if(last_pressed == "left" || last_pressed == "down")
{
	last_pressed = "left";
	if(sprite_index != sPlayerAttackLeft)
	{
		sprite_index = sPlayerAttackLeft;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}

mask_index = sPlayerAttackLeftHB;
}
else{}
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, oEnemy, hitByAttackNow, false);
if(hits > 0)
{
	for(var i = 0; i < hits; i++)
	{
		var hitID = hitByAttackNow[| i]; //acha a entrada da ds list
		//se nao existe um objeto que nao ta na lista de obj ja atacados(-1 = nao achou)
		if(ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with(hitID)
			{
				EnemyHit(2);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayerIdleFront;

if(animation_end())
{
	if(last_pressed == "right") {sprite_index = sPlayerIdleRight}
	if(last_pressed == "left") {sprite_index = sPlayerIdleLeft}
	state = PLAYERSTATE.IDLE;
}