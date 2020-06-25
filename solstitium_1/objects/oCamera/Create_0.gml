//cria um obj de camera
camera = camera_create();

cam_width = 500; //largura da camera
cam_height = 325; //altura

follow = oPlayer;//seta o obj a ser seguido

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
//projection matrix
var pm = matrix_build_projection_ortho(cam_width, cam_height, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

xTo = x;
yTo = y;