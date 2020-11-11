if(pause == true){
	draw_set_alpha(0.5);
	draw_rectangle_colour(0, 0, global.display_widht, global.display_height, c_black, c_black, c_black, c_black, false);

	draw_set_alpha(1);
	draw_set_font(font_text0);
	draw_text_color(global.display_widht/2, global.display_height/2, "PAUSADO \n APERTE ESC NOVAMENTE PARA SAIR \n APERTE QUALQUER TECLA PARA CONTINUAR", c_white, c_white, c_white, c_white, 1);

}