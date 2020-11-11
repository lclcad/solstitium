if(position_meeting(mouse_x, mouse_y, oMenuItem1))
{
	oMenu.mouseover1 = true;
	if(mouse_check_button_pressed(mb_left)) mouse_menu_select(i);
}
else oMenu.mouseover1 = false;

if(!cancontinue)
{
	menu = oMenu;
	cancontinue = true;

	button_h = 45;
	button_w = 256;
	button_padding = 8;

	davi_menu_width = display_get_width();
	maria_menu_height = display_get_height();

	button[0] = "Novo Jogo";
	button[1] = "Continuar";
	button[2] = "Créditos";
	button[3] = "Sair";

	buttons = array_length_1d(button);

	i = 1;
	x = (davi_menu_width/2) - (button_w/2);
	y = (maria_menu_height/2) - (((buttons*button_h) + ((buttons-1) * button_padding))/2);
	y += (button_h + button_padding) * i;
	cancontinue = false;
}