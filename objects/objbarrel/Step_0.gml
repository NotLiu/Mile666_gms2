/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x, y , mouse_x, mouse_y);

//clamp barrel angle
if(image_angle<=180 && image_angle>69){
	image_angle = 69;	
}
if(image_angle<360 && image_angle>180){
	image_angle = 0;	
}

//show_debug_message(image_angle);
if(mouse_check_button_pressed(mb_left)){
		var bulletspawnx = x+lengthdir_x(barrel_length, image_angle+barrel_direction);
		var bulletspawny = y+lengthdir_y(barrel_length, image_angle+barrel_direction);
		
		with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objShell)){
			speed = 30;
			direction = other.image_angle;
			
		}
}