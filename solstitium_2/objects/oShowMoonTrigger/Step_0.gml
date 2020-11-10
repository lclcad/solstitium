if(place_meeting(x, y, player) && !has_hit_player)
{
	lualua.can_fade_in = true;
	has_hit_player = true;
	alarm[6] = 30;
	alarm[5] = 420;
}