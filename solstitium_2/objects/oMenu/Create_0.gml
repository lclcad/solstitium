#macro SAVEFILE "Save.sav"

button_h = 45;
button_w = 256;
button_padding = 8;

//TESTE DE MOUSE

mouseover0 = false;
mouseover1 = false;
mouseover2 = false;
mouseover3 = false;
//

//variavel que guarda o indice do item que o mouse ta em cima
mouseisover = -1;

davi_menu_width = display_get_width();
maria_menu_height = display_get_height();

button[0] = "Novo Jogo";
button[1] = "Continuar";
button[2] = "Créditos";
button[3] = "Sair";

buttons = array_length_1d(button);

menu_x = (davi_menu_width/2) - (button_w/2);
menu_y = (maria_menu_height/2) - (((buttons*button_h) + ((buttons-1) * button_padding))/2);

menu_index = 0;
last_item_selected = 0;