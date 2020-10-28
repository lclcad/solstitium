if(place_meeting(x, y, player)){ //checa a colisao
	if(!instance_exists(diag_indicator) && player.state != PLAYERSTATE.DIALOGUE){
		diag_indicator = instance_create_depth(dialog_char.x, dialog_char.y, dialog_char.depth - 1, oDialogueIndicator); //cria um indicador visual de que há um diálogo
	}
	with(diag_indicator){ //efeito de fade in do indicador
		if(image_alpha <= 0.5){
			image_alpha += img_spd;
		}
	}
	if(keyboard_check(ord("E"))){ //checa se o botao de ativar o dialogo foi pressionado
		if(!instance_exists(oTextbox)){
			if(instance_exists(diag_indicator)){instance_destroy(diag_indicator)}
			dialogue_box = instance_create_depth(0, 0, 0, oTextbox); //cria a caixa do dialogo
			player.dialog_char = dialog_char; //seta o variavel do personagem do dialogo
			player.state = PLAYERSTATE.DIALOGUE; //seta o estado do player como dentro de um dialogo
			player.current_dialog = dialogue_box; //seta a variavel caixa de dialogo
			dialogue_cam = instance_create_depth(0, 0, 0, oShowObj); //cria uma camera para focar no personagem do dialogo
			with(dialogue_cam){ //seta as variaveis dessa camera, quem ela vai mostrar, e a defasagem para a posição correta
				obj_to_show = other.dialog_char;
				x_offset = cam_width/2;
				y_offset = cam_height/2;
			}
			with(dialogue_box){
				text[0] = "O Rei ordenou a captura de todas as pedras com inscrições";
				text[1] = "Se você não me der essas pedras, eu te jogarei ao mar";
				event_perform(ev_other, ev_user1);
			}
			
		}
	}
}
else{ //quando nao estiver colidindo com o jogador
	if(instance_exists(diag_indicator)){ //checa se existe o indicador de dialogo
		if(diag_indicator.image_alpha > 0){ //efeito de fade out
			diag_indicator.image_alpha -= diag_indicator.img_spd*1.5;
		}
		if(diag_indicator.image_alpha == 0){ //quando o efeito de fade out acabar destroi a instancia do indicador
			instance_destroy(diag_indicator);
		}
	}
}