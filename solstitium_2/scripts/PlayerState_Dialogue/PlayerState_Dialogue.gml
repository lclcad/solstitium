function PlayerState_Dialogue(argument0) {
	go_to_next_box = mouse_check_button_pressed(mb_left); //variavel para passar a pagina do dialogo
	dialogue = argument0;

	if(go_to_next_box && dialogue.page == array_length_1d(dialogue.text) - 1 && dialogue.text_counter == dialogue.text_lenght){ //verifica se esta é a ultima pagina do dialogo
		state = PLAYERSTATE.IDLE //seta o estado do player como parado
		instance_destroy(dialogue); //destroi a instancia da caixa de dialogo
		if(instance_exists(oAutoDialogHolder)) oAutoDialogHolder.is_happening = false;
		if(talking_to_moon == true) moon();
	}
	else if(go_to_next_box && dialogue.text_counter == dialogue.text_lenght){ //verifica se o texto ja terminou de aparecer e passa pra proxima pagina do dialogo
		with(dialogue){
			blink_count = 0;
			current_alpha = 0;
			text_counter = 0;
			page_change = true;
			page ++;	
			event_perform(ev_other, ev_user1);
		}
	}
	dir = point_direction(x, y, dialog_char.x, dialog_char.y); //muda o sprite do player para ficar virado para o personagem do dialogo

	if(dir < 45 && dir > 315){sprite_index = sPlayerIdleRight;}
	else if(dir <= 315 && dir >= 225){sprite_index = sPlayerIdleFront;}
	else if(dir < 225 && dir >= 135){sprite_index = sPlayerIdleLeft;}
	else{sprite_index = sPlayerIdleBack;}


}
