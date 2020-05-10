/// @description Insert description here
// You can write your code in this editor
if(shake_value > 0){
	shake = true;	
}

if(shake == true){
	var rand_x = random_range(-shake_value,shake_value);
	var rand_y = random_range(-shake_value,shake_value);
	camera_set_view_pos(view_camera[0], view_x + rand_x, view_y + rand_y);
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);
}

shake_value -= 0.1;

if(shake_value <= 0 && shake == true){
	shake = false;
	camera_set_view_pos(view_camera[0], view_x, view_y);
}