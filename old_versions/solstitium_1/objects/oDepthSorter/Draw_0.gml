var inst_num = instance_number(oParentDepthObject); //pega a quantidade de instancias para se desenhar
var dgrid = ds_depthgrid;

if(ds_grid_height(dgrid) != inst_num){ //muda o tamanho da grid conforme o numero de objetos na sala
	ds_grid_resize(dgrid, 2, inst_num);
}

var yy = 0;
with(oParentDepthObject){ //coloca os objetos na grid
	dgrid[# 0, yy] = id;
	dgrid[# 1, yy] = y;
	yy++;
}

ds_grid_sort(dgrid,	1, true); //rearranja os elementos na grid em ordem ascendente

var yy = 0, inst;
repeat(inst_num){ //desenha os objetos na grid na ordem
	inst = dgrid[# 0, yy];
	with(inst){
		event_perform(ev_draw, 0);
	}
	yy++;
}