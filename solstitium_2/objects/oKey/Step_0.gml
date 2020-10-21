//sistema de fade out e destroy da chave
//destroi os outros objetos no script PlayerPickKey, aqui ele so destroi ele mesmo
if(can_fade_out)
{
	fade -= 0.15;
	image_alpha = fade;
	
	if(fade == 0) instance_destroy();
}
