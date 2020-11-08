//overwrite save antiga
if(file_exists(SAVEFILE)) file_delete(SAVEFILE);

//criar nova save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);


//VERIFICA A CONTAGEM DAS RUNAS EM CADA SALA
//SE MUDAR ORDEM OU ADD SALAS, MUDAR INDICE	AQUI
if(room_get_name(room) == "roomDeserto" || room_get_name(room) == "roomBoss2" || room_get_name(room) == "roomMoon1") rune_count = 0;
else if(room_get_name(room) == "roomCity1" || room_get_name(room) == "roomBoat1" || room_get_name(room) == "roomBoat2" || room_get_name(room) == "roomForest1" || room_get_name(room) == "roomBoss1" || room_get_name(room) == "roomMoon2") rune_count = 1;
else if(room_get_name(room) == "roomForest2" || room_get_name(room) == "roomBoss3" || room_get_name(room) == "roomMoon3") rune_count = 2;
else if(room_get_name(room) == "roomMontanha") rune_count = 3;

else show_debug_message("ERRO NO RUNE HANDLER NO ROOM START DO PLAYER");

if(instance_exists(oDataCarrier)){
	hp = 10;
	key_count = oDataCarrier.key_count;
	dash_cooldown = oDataCarrier.dash_cooldown;
	targetEnter = oDataCarrier.targetEnter;
	last_pressed = oDataCarrier.last_pressed;
	rune_count = oDataCarrier.rune_count;
	
	instance_destroy(oDataCarrier);
	
	if(!instance_exists(oFadeIn)){
		instance_create_depth(0, 0, -9999, oFadeIn);
	}
	
	if(instance_exists(targetEnter)){
		x = targetEnter.x;
		y = targetEnter.y;
	}
}