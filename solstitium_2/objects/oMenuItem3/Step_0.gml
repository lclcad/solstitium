if(position_meeting(mouse_x, mouse_y, oMenuItem3))
{
	oMenu.mouseover3 = true;
	if(mouse_check_button_pressed(mb_left)) mouse_menu_select(i);
}

else oMenu.mouseover3 = false;