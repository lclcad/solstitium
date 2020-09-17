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