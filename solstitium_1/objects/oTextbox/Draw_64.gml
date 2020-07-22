//
draw_sprite(box, 0, box_x, box_y);
text_lenght = string_length(text[page]);

if(text_counter < text_lenght){
	text_counter++;
	if(mouse_check_button_pressed(mb_left) && !page_change){
		text_counter = text_lenght;
	}
	page_change = false;
}
var substr = string_copy(text_warped, 1, text_counter);
var c = text_col;
draw_text_color(text_x, text_y, substr, c,c,c,c, 1);