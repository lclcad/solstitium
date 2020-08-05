if(is_hit){
gpu_set_fog(true, $10B114, 0, 0);
draw_self();
gpu_set_fog(false, $10B114, 0, 0);
}
else{
	draw_self();
}