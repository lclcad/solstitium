box = sDialogueBox;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);

box_x = (global.display_widht - box_width)/2;
box_y = (global.display_height - global.display_height*0.02) - box_height;

x_buffer = box_width/4 + 12;
y_buffer = 25;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
text_max_width = box_width - x_buffer - 40;

text = [];

page = 0;
text_counter = 0;
page_change = false;

current_alpha = 0;
load_x = box_x + 1125 + 37;
load_y = box_y + 265 + 37;
current_alpha = 0;
blink_count = 0;

text_col = c_white;
font = font_text0;

draw_set_font(font);