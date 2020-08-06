switch(state){
	case PLANTSTATE.INACTIVE: draw_sprite(sBoss1, 0, x, y);
	case PLANTSTATE.CHOSEATTACK:
		if(alarm[1] mod room_speed == 0){//muda a cor efetiva dos olhos a cada 1 segundo
			cur_color ++;
			c_alpha2 = 0;
		}
	
		//executa o efeito de transição da cor dos olhos
		if(cur_color > -1){
			draw_sprite_ext(sBoss1, color_array[cur_color], x, y, 1, 1, 0, c_white, 1);
			draw_sprite_ext(sBoss1, color_array[cur_color+1], x, y, 1, 1, 0, c_white, c_alpha2);
			c_alpha2 += random(0.05);
		}
		break;
	case PLANTSTATE.ATKSPIKE: draw_sprite_ext(sBoss1, 1, x, y, 1, 1, 0, c_white, 1); break;
	case PLANTSTATE.ATKPOISON: draw_sprite_ext(sBoss1, 2, x, y, 1, 1, 0, c_white, 1); break;
	case PLANTSTATE.ATKFIRE: draw_sprite_ext(sBoss1, 3, x, y, 1, 1, 0, c_white, 1); break;
	case PLANTSTATE.ATKBASH: draw_sprite_ext(sBoss1, 4, x, y, 1, 1, bash_rot, c_white, 1); break;
}