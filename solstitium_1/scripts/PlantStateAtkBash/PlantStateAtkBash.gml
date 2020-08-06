if (y != 0-sprite_height && !atk_has_begun){
	y = floor(lerp(y, 0-sprite_height, 0.1));
}
else{
	if(!atk_has_begun){
		bash_start_side = irandom(3);
		atk_has_begun = true;
		alarm[2] = 1.5*room_speed;
		is_hitable = false;
	}
	if(!bashing){
		switch(bash_start_side){
			case 0:
				bash_rot = 0;
				x_spd = 0;
				y_spd = 20;
				final_point = room_height;
				x = oPlayer.x-sprite_width/2;
				y = 0-sprite_height;
				mask_index = sBossBashMaskUp;
				break;
			case 1:
				bash_rot = 270;
				x_spd = -20;
				y_spd = 0;
				final_point = 0;
				x = room_width+sprite_height;
				y = oPlayer.y-sprite_width/2;
				mask_index = sBossBashMaskRight;
				break;
			case 2:
				bash_rot = 180;
				x_spd = 0;
				y_spd = -20;
				final_point = 0;
				x = oPlayer.x+sprite_width/2;
				y = room_height+sprite_width;
				mask_index = sBossBashMaskDown;
				break;
			case 3:
				bash_rot = 90;
				x_spd = 20;
				y_spd = 0;
				final_point = room_width;
				x = 0-sprite_height;
				y = oPlayer.y+sprite_width/2;
				mask_index = sBossBashMaskLeft;
				break;
		}	
	}
	else if(!finished_bashing){
		x += x_spd;
		y += y_spd;
		switch(bash_start_side){
			case 0:
				if(y >= room_height){
					x = start_x_pos;
					y = 0-sprite_height;
					if(alarm[3] < 0){
						alarm[3] = 1*room_speed;
					}
					finished_bashing = true;
				}
				break;
			case 1:
				if(x <= 0){
					x = start_x_pos;
					y = 0-sprite_height;
					if(alarm[3] < 0){
						alarm[3] = 1*room_speed;
					}
					finished_bashing = true;
				}
				break;			
			case 2:
				if(y <= 0){
					x = start_x_pos;
					y = 0-sprite_height;
					if(alarm[3] < 0){
						alarm[3] = 1*room_speed;
					}
					finished_bashing = true;
				}
				break;
			case 3:
				if(x >= room_width){
					x = start_x_pos;
					y = 0-sprite_height;
					if(alarm[3] < 0){
						alarm[3] = 1*room_speed;
					}
					finished_bashing = true;
				}
				break;
		}
	}
	else if(returning){
		depth = 500;
		if(y != start_y_pos){
			is_hitable = true;
			x = start_x_pos;
			var go_to_y = lerp(y, start_y_pos, 0.06);
			if(round(go_to_y) == start_y_pos){go_to_y = start_y_pos}
			y = go_to_y;
			show_debug_message(y);
			show_debug_message(start_y_pos);
		}
		else{
			show_debug_message(alarm[1]);
			if(alarm[4] == -1){
				alarm[4] = 3*room_speed;
			}
		}
	}
}