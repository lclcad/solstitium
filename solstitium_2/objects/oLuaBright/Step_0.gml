//sistema de fade out da lua
if(can_fade_in == true)
{
	//show_debug_message(string(fade));
	if(fade < 1)
	{
	fade += 0.005;
	image_alpha = fade;
	}
}
