menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;

if(menu_index < 0) {menu_index = buttons -1;}
if(menu_index > buttons - 1) {menu_index = 0;}

if(menu_index != last_item_selected){ }//som

last_item_selected = menu_index;
