if(timer_has_ended)
{
	room_goto(roomTEIXEIRA);
	
	if(instance_exists(oLuaBright)) instance_destroy(oLuaBright);
	if(instance_exists(oHudPlayerHealth)) instance_destroy(oHudPlayerHealth);
	if(instance_exists(oPlayer)) instance_destroy(oPlayer);
}

if(timer_rune_destroy)
{
	if(instance_exists(player)) player.rune_count = 0;
}