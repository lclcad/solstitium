function mouse_menu_select(indice){
	switch(indice)
	{
		case 0:
		room_goto(roomDeserto);
		break;
	
		case 1:
		if(!file_exists(SAVEFILE))
		{
			room_goto(roomDeserto);	
		}
		else
		{
			var file = file_text_open_read(SAVEFILE);
			var target = file_text_read_real(file);
			file_text_close(file);
			room_goto(target);
		}
		break;
	
		case 2:
		room_goto(roomTEIXEIRA);
		break;
	
		case 3:
		game_end();
		break;
	}
}