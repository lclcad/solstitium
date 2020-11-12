i = 0;

repeat(buttons)
{
	draw_set_font(font_text0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	xx = menu_x;
	yy = menu_y + (button_h	+ button_padding) * i;

	menu_mouse_x = device_mouse_x_to_gui(0)
	menu_mouse_y = device_mouse_y_to_gui(0)
	
	if(menu_mouse_x >= xx && menu_mouse_x <= xx + button_w && menu_mouse_y >= yy && menu_mouse_y <= yy + button_h){
		mouseisover = i
		menu_index = mouseisover;
		if(mouse_check_button_pressed(mb_left)) mouse_menu_select(i);
	}
	
	//cor do retangulo
	draw_set_color(c_black);
	
	//cor do retangulo se estiver selecionado
	if(menu_index == i || (menu_index == i && menu_index == mouseisover)) {
		draw_set_color(c_white);
		//show_debug_message("show");
	}
	
	draw_rectangle(xx, yy, xx + button_w, yy + button_h, false);
	
	//cor do texto
	draw_set_color(c_white);
	
	//cor do texto se estiver selecionado
	if(menu_index == i || (menu_index == i && menu_index == mouseisover)) draw_set_color(c_black);
	
	draw_text(xx + button_w/2, yy + button_h/2, button[i]);
	i++;
}