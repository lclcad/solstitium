if(place_meeting(x, y, player)){
	if(!instance_exists(oShowDialogue)){
		diag_indicator = instance_create_depth(dialog_char.x, dialog_char.y, dialog_char.depth - 1, oShowDialogue);
	}
	with(diag_indicator){
		if(image_alpha <= 0.5){
			image_alpha += img_spd;
		}
	}
	if(keyboard_check(ord("E"))){
		if(!instance_exists(oTextbox)){
			instance_create_depth(0, 0, -9999, oTextbox);
			player.dialog_char = dialog_char;
			player.state = PLAYERSTATE.DIALOGUE;
		}
	}
}
else{
	if(instance_exists(oShowDialogue)){
		if(diag_indicator.image_alpha > 0){
			diag_indicator.image_alpha -= diag_indicator.img_spd*1.5;
		}
		if(diag_indicator.image_alpha == 0){
			instance_destroy(oShowDialogue);
		}
	}
}