// quando o player pega a chave com E, esse script handle a parte do key_count e o oKeyHB handle a parte de destruir os objs
function PlayerPickKey(){
	key_count += 1;
	show_debug_message("chave pega");
	
	with(oKey)
	{
		if(instance_exists(oKeyHB)) instance_destroy(oKeyHB);
		if(instance_exists(oKeyIndicator)) instance_destroy(oKeyIndicator);
		
		can_fade_out = true;
	}
}