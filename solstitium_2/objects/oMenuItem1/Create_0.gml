menu = oMenu;

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