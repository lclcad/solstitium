//sistema de fade out da lua
if(can_fade_out)
{
	fade -= 0.02;
	image_alpha = fade;
	
	if(fade == 0) instance_destroy();
}

//show_debug_message(string(audio_is_playing(soundTrack1)));