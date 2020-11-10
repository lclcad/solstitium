//apaga a save do jogo quando o jogo termina
if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

if(!instance_exists(oFadeIn)){
		instance_create_depth(0, 0, -9999, oFadeIn);
}

if(!instance_exists(oHudPlayerHealth))
{
	instance_destroy();
}