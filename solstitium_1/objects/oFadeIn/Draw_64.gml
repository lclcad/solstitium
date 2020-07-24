draw_primitive_begin(pr_trianglefan);
draw_vertex_color(global.display_widht, global.display_height, c_black, current_alpha);
draw_vertex_color(global.display_widht, 0, c_black, current_alpha);
draw_vertex_color(0, 0, c_black, current_alpha);
draw_vertex_color(0, global.display_height, c_black, current_alpha);
draw_primitive_end();