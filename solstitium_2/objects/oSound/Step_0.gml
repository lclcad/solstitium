current_room = room_get_name(room);

if(current_room != last_room)
{
	show_debug_message("DIFERENCA DE SALAS");
	if((current_room == "roomMenu" || current_room == "roomTEIXEIRA") && !audio_is_playing(soundMenu))
	{//Menu
		if(audio_is_playing(soundTrack1)) audio_sound_gain(soundTrack1, 0, 500);
		if(audio_is_playing(sound_boss)) audio_sound_gain(sound_boss, 0, 500);
		if(audio_is_playing(sound_lua)) audio_sound_gain(sound_lua, 0, 500);
		if(audio_is_playing(sound_boss_intro)) audio_sound_gain(sound_boss_intro, 0, 500);
		audio_play_sound(soundMenu, 1, true);
	}
	
	else if((current_room == "roomDeserto" || current_room == "roomCity1" || current_room == "roomBoat1" || current_room == "roomBoat2" || current_room == "roomForest1") && !audio_is_playing(soundTrack1))
	{//RESTO
		show_debug_message("CHEGOU RESTO");
		if(audio_is_playing(soundMenu)) audio_sound_gain(soundMenu, 0, 500);
		if(audio_is_playing(sound_boss)) audio_sound_gain(sound_boss, 0, 500);
		if(audio_is_playing(sound_lua)) audio_sound_gain(sound_lua, 0, 500);
		if(audio_is_playing(sound_boss_intro)) audio_sound_gain(sound_boss_intro, 0, 500);
		
		audio_play_sound(soundTrack1, 1, true);
	}
	
	else if((current_room == "roomMoon1" || current_room == "roomMoon2" || current_room == "roomMoon3" || current_room == "roomMontanha") && !audio_is_playing(sound_lua))
	{//lua
		if(audio_is_playing(soundTrack1)) audio_sound_gain(soundTrack1, 0, 500);
		if(audio_is_playing(soundMenu)) audio_sound_gain(soundMenu, 0, 500);
		if(audio_is_playing(sound_boss)) audio_sound_gain(sound_boss, 0, 500);
		if(audio_is_playing(sound_boss_intro)) audio_sound_gain(sound_boss_intro, 0, 500);
		
		audio_play_sound(sound_lua, 1, true);
	}
	
	else if((current_room == "roomBoss1" || current_room == "roomBoss2" || current_room == "roomBoss3") && !audio_is_playing(sound_boss))
	{// bosses
		if(audio_is_playing(soundMenu)) audio_sound_gain(soundMenu, 0, 500);
		if(audio_is_playing(soundTrack1)) audio_sound_gain(soundTrack1, 0, 500);
		if(audio_is_playing(sound_lua)) audio_sound_gain(sound_lua, 0, 500);
		audio_play_sound(sound_boss_intro, 1, false);
	}
}

if((current_room == "roomBoss1" || current_room == "roomBoss2" || current_room == "roomBoss3") && !audio_is_playing(sound_boss))
{
	if(!audio_is_playing(sound_boss_intro) && !audio_is_playing(sound_boss))
	{
		audio_play_sound(sound_boss, 1, true);
	}
}

if(audio_is_playing(sound_boss) || audio_is_playing(sound_boss_intro) || audio_is_playing(sound_lua) || audio_is_playing(soundMenu) || audio_is_playing(soundTrack1))
{
	if(audio_sound_get_gain(sound_boss) == 0 && !(current_room == "roomBoss1" || current_room == "roomBoss2" || current_room == "roomBoss3")) audio_stop_sound(sound_boss);
	if(audio_sound_get_gain(sound_boss_intro) == 0 && !(current_room == "roomBoss1" || current_room == "roomBoss2" || current_room == "roomBoss3")) audio_stop_sound(sound_boss_intro);
	if(audio_sound_get_gain(sound_lua) == 0 && audio_is_playing(sound_lua) && !(current_room == "roomMoon1" || current_room == "roomMoon2" || current_room == "roomMoon3")) audio_stop_sound(sound_lua);
	if(audio_sound_get_gain(soundMenu) == 0 && !(current_room == "roomMenu" || current_room == "roomTEIXEIRA")) audio_stop_sound(soundMenu);
	if(audio_sound_get_gain(soundTrack1) == 0 && !(current_room == "roomDeserto" || current_room == "roomCity1" || current_room == "roomBoat1" || current_room == "roomBoat2" || current_room == "roomForest1")) audio_stop_sound(soundTrack1);
} 

last_room = current_room;