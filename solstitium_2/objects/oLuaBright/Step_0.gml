//sistema de fade out da lua
if(can_fade_in)
{
	while(fade < 1)
	{
	fade += 0.005;
	image_alpha = fade;
	}
}
