if(place_meeting(x, y, player) && !has_hit_player)
{
	lualua.can_fade_in = true;
	has_hit_player = true;
}