box = sDialogueBox;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);

box_x = (global.display_widht - box_width)/2;
box_y = (global.display_height - global.display_height*0.02) - box_height;

x_buffer = box_width/4;
y_buffer = 20;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;

text = "o gabriel teixeira te ama";

text_col = c_white;
font = font_text0;
