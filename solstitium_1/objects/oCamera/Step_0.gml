x += (xTo - x)/20;
y += (yTo - y)/20;

if(follow != noone) //se estiver seguindo uma instancia de obj
{
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);

camera_set_view_mat(camera, vm);

