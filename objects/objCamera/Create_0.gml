/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

var vm = matrix_build_lookat(x, room_height/2+20, -10,	x, room_height/2+20, 0, 0, 1, 0);
var	pm = matrix_build_projection_ortho(1306, 743, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;