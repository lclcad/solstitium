function HudHandler(){
//PARTE DA HEALTH

current_health = oPlayer.hp;

x_position = 0;
y_position = y_offset;

if(oPlayer.in_combat && current_alpha < 1){
	current_alpha += 0.05;
}

else if(!oPlayer.in_combat && current_alpha > 0){
	current_alpha -= 0.02;
}

for(i=0; i<current_health; i++){
	x_position += x_offset;
	draw_sprite_ext(sPlayerHealth, 0, x_position, y_position, 6, 6, 0, c_white, current_alpha);
	x_position += sprite_get_width(sPlayerHealth)*5;
}
//show_debug_message(current_alpha);

//PARTE DA KEY_COUNT

current_keys = oPlayer.key_count;

key_x_position = 0;
key_y_position = key_y_offset;

if(oParentDoor.changing_room) key_current_alpha = 1

if(current_keys > 0 && key_current_alpha < 1){
	key_current_alpha += 0.05;
}

else if(current_keys <= 0 && key_current_alpha > 0){
	key_current_alpha -= 0.02;
}

for(j = 0; j < current_keys; j++){
	key_x_position += key_x_offset;
	draw_sprite_ext(sKey, 0, key_x_position, key_y_position, 2, 2, 0, c_white, key_current_alpha);
	key_x_position += sprite_get_width(sKey)*2;
}

//PARTE DAS RUNAS

current_runes = oPlayer.rune_count;

rune_x_position = (display_get_width()/2) + display_get_width()/4;
rune_y_position = rune_y_offset;

if(current_runes > 0 && rune_current_alpha < 1){
	rune_current_alpha += 0.05;
}

else if(current_runes <= 0 && rune_current_alpha > 0){
	rune_current_alpha -= 0.02;
}

for(i = 0; i < current_runes; i++){
	rune_x_position += rune_x_offset;
	
	switch(i)
	{
		case 0:
		draw_sprite_ext(sRune, 0, rune_x_position, rune_y_position, 2, 2, 0, c_white, rune_current_alpha);
		break;
		
		case 1:
		draw_sprite_ext(sRune2, 0, rune_x_position, rune_y_position, 2, 2, 0, c_white, rune_current_alpha);
		break;
		
		case 2:
		draw_sprite_ext(sRune3, 0, rune_x_position, rune_y_position, 2, 2, 0, c_white, rune_current_alpha);
		break;
	}
	
	rune_x_position += sprite_get_width(sRune)*2;
}

}