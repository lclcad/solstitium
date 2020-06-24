hsp = 0;
vsp = 0;

//setar sprite
if(sprite_index != sPlayerAttackRight)
{
	sprite_index = sPlayerAttackRight;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

//
mask_index = sPlayerAttackRightHB;
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
	sprite_index = sPlayerIdleRight;
	state = PLAYERSTATE.IDLE;
}