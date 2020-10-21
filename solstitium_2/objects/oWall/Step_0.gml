//sistema de fade out da parede
if(can_fade_out)
{
	fade -= 0.1;
	image_alpha = fade;
	
	if(fade == 0) instance_destroy();
}