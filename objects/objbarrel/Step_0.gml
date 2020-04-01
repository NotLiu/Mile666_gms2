/// @description  Insert description here
// You can write your code in this editor

//clamp barrel angle
if(image_angle<=180 && image_angle>69){
	image_angle = 69;	
}
if(image_angle<360 && image_angle>180){
	image_angle = 0;	
}

//show_debug_message(image_angle);
var bulletspawnx = x+lengthdir_x(barrel_length, image_angle+barrel_direction);
var bulletspawny = y+lengthdir_y(barrel_length, image_angle+barrel_direction);

if(mouse_check_button_pressed(mb_left) && delay <= 0){		
		with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objShell)){
			speed = 40;
			direction = other.image_angle;
		}

		delay = 20;
}


if(mouse_check_button(mb_right) && delay_2nd <= 0 ){
	with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objBullet)){
		speed = 50;
		direction = other.image_angle;
	}
	delay_2nd = 10;
}

delay -= 1;
delay_2nd -= 1;	
