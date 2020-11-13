function EnemyHit(argument0) {
	var dano = argument0;
	show_debug_message("chegou aqui");
	hp -= dano;

	is_hit = true;

	alarm[0] = room_speed * 0.1;

	if(hp <= 0)
	{
		hp = 0;
		state = PLANTSTATE.INACTIVE;
		if(room_get_name(room) == "roomBoss2") state = SCORPIOSTATE.DEAD;
		if(room_get_name(room) == "roomBoss1") state = PLANTSTATE.DEAD;
		if(room_get_name(room) == "roomBoss3") state = SQUIRRELSTATE.DEAD;
		
		if (player.key_count <= 0) player.key_count += 1;
		
		show_debug_message("player key count caralho: " + string(player.key_count))
		instance_destroy(oPassage);
	}


}
