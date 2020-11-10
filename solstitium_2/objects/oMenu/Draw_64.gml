i = 0;

repeat(buttons)
{
	draw_set_font(font_text0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	xx = menu_x;
	yy = menu_y + (button_h	+ button_padding) * i;
	
	//cor do retangulo
	draw_set_color(c_black);
	
	//cor do retangulo se estiver selecionado
	show_debug_message(string(mouseisover));
	if(menu_index == i || (menu_index == i && menu_index == mouseisover)) draw_set_color(c_white);
	
	draw_rectangle(xx, yy, xx + button_w, yy + button_h, false);
	
	//cor do texto
	draw_set_color(c_white);
	
	//cor do texto se estiver selecionado
	if(menu_index == i || (menu_index == i && menu_index == mouseisover)) draw_set_color(c_black);
	
	draw_text(xx + button_w/2, yy + button_h/2, button[i]);
	i++;
}