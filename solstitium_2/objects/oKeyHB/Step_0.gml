
if(place_meeting(x, y, player)){
	if(!instance_exists(diag_indicator) && player.state != PLAYERSTATE.DIALOGUE){
		diag_indicator = instance_create_depth(dialog_char.x, dialog_char.y, dialog_char.depth - 1, oKeyIndicator); //cria um indicador visual de que há um diálogo
	}
	with(diag_indicator){ //efeito de fade in do indicador
		if(image_alpha <= 0.5){
			image_alpha += img_spd;
		}
	}
	/*if(keyboard_check(ord("E"))){
		show_debug_message("chave pega");
		instance_destroy(diag_indicator);
		instance_destroy(key_img);
		instance_destroy();
	}*/
		
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