if(state == PLANTSTATE.CHOSEATTACK){
	if(alarm[1] mod room_speed == 0){//muda a cor efetiva dos olhos a cada 1 segundo
		cur_color ++;
		c_alpha2 = 0;
	}
	
	//executa o efeito de transição da cor dos olhos
	draw_sprite_ext(sBoss1, color_array[cur_color], x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(sBoss1, color_array[cur_color+1], x, y, 1, 1, 0, c_white, c_alpha2);
	c_alpha2 += random(0.05);
}