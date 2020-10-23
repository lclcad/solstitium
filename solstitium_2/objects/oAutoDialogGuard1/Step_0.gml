if(dtrigger){
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
			text[0] = "eu sou um guarda bargargaruahsdgkflad";
			text[1] = "Para o templo? Então você sabe da existência do templo.";
			text[2] = "Se eu fosse você, eu não brincaria com esse tipo de coisa";
			text[3] = "Um companheiro meu já foi morto por aquelas bandas, procurando um tesouro ou sei lá o que.";
			text[4] = "Mas... Já que você insiste, eu vou te levar até o porto de Raulia";
			text[5] = "Eu nunca vi tanta árvore na minha vida quanto lá.";
			text[6] = "Vá até o barco. Não deve demorar tanto";
			event_perform(ev_other, ev_user1);
		}
	}
}