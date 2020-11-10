if(position_meeting(mouse_x, mouse_y, oMenuItem0))
{
	oMenu.mouseover0 = true;
	if(mouse_check_button_pressed(mb_left)) mouse_menu_select(i);
}

else oMenu.mouseover0 = false;