function PlantStateChooseAttack() {
	if(!has_attack_chosen){//verifica se um ataque foi escolhido

		var rand_atk = irandom(2);
		next_atk = attacks[rand_atk];//escolhe um ataque
		while(next_atk == last_attack){//verifica se o ataque nao esta sendo repitido
			rand_atk = irandom(2);
			next_atk = attacks[rand_atk];
		}
		switch(next_atk){//determina a cor dos olhos correspondente com o ataque
			case PLANTSTATE.ATKSPIKE: correspondant_color = 1; break;
			case PLANTSTATE.ATKPOISON: correspondant_color = 2; break;
			case PLANTSTATE.ATKFIRE: correspondant_color = 3; break;
			case PLANTSTATE.ATKBASH: correspondant_color = 4; break;
		}
		color_array[0] = 0;
		color_array[10] = correspondant_color; //seta a ultima cor dos olhos

		for(i=9; i>=1; i--){//seta as outras cores, fazendo verificações para que nao se repitam as mesmas cores
			save_color1 = color1;
			color1 = color2;
			var rand_index = irandom(ds_list_size(color_list)-1);
			color2 = ds_list_find_value(color_list, rand_index);
			if(i == 8){
				while(color2 == save_color1 || color2 == color1 || color2 == correspondant_color){
					var rand_index = irandom(ds_list_size(color_list)-1);
					color2 = ds_list_find_value(color_list, rand_index);
				}
			}
			else{
				while(color2 == save_color1 || color2 == color1){
					var rand_index = irandom(ds_list_size(color_list)-1);
					color2 = ds_list_find_value(color_list, rand_index);
				}
			}
			color_array[i] = color2;
		}
	
		alarm[1] = room_speed*10; //determina o alarme que, em 10 segundos, muda o estado do boss para o ataque escolhido
		has_attack_chosen = true; //seta que ja tem um ataque escolhido
	}


}
