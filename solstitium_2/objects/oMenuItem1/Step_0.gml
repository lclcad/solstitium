if(position_meeting(mouse_x, mouse_y, oMenuItem1))
{
	oMenu.mouseover1 = true;
	if(mouse_check_button_pressed(mb_left)) mouse_menu_select(i);
}
else oMenu.mouseover1 = false;