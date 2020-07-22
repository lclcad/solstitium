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

text[0] = "esta eh uma string grande para testar se o texto esta sendo colocado corretmente em linhas, mas eh uma string bem grande mesmo, gigantesca, o quao grande der pois eu tenho que testar o texto aparecendo aos poucos";
text[1] = "ta mudando a pagina?";
page = 0;
text_counter = 0;
page_change = false;


text_col = c_white;
font = font_text0;

draw_set_font(font);

event_perform(ev_other, ev_user1);