menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;

if(menu_index < 0) {menu_index = buttons -1;}
if(menu_index > buttons - 1) {menu_index = 0;}

if(menu_index != last_item_selected){ }//som

last_item_selected = menu_index;

if(mouseover0) mouseisover = 0;
else if(mouseover1) mouseisover = 1;
else if(mouseover2) mouseisover = 2;
else if(mouseover3) mouseisover = 3;
else mouseisover = -1;

if(mouseover0 || mouseover1 || mouseover2 || mouseover3) menu_index = mouseisover;