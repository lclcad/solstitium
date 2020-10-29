button_h = 45;
button_w = 256;
button_padding = 8;

davi_menu_width = display_get_width();
maria_menu_height = display_get_height();

button[0] = "Voltar";

buttons = array_length_1d(button);

x = (davi_menu_width/2) - (button_w/2);
y = (maria_menu_height/2) - (((buttons*button_h) + ((buttons-1) * button_padding))/2);

menu_index = 0;
last_item_selected = 0;

menu_x = x;
menu_y = y;