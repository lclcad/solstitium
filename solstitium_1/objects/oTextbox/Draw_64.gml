draw_sprite(box, 0, box_x, box_y);
text_lenght = string_length(text[page]);
alpha_spd = 1/text_lenght;

if(text_counter < text_lenght){
	draw_sprite_ext(sDialogueLoading, 0, load_x, load_y, 1, 1, 0, c_white, current_alpha);
	current_alpha += alpha_spd;
	text_counter++;
	if(mouse_check_button_pressed(mb_left) && !page_change){
		current_alpha = 1;
		text_counter = text_lenght;
	}
	page_change = false;
}
else{
	if(blink_count < 30){
		draw_sprite_ext(sDialogueLoading, 0, load_x, load_y, 1, 1, 0, c_white, 1);
		blink_count++;
	}
	else if(blink_count < 60){
		blink_count++;
	}
	else{
		blink_count = 0;
	}
}
var substr = string_copy(text_warped, 1, text_counter);
var c = text_col;
draw_text_color(text_x, text_y, substr, c,c,c,c, 1);
