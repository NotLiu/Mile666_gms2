/// @description  Insert description here
// You can write your code in this editor
depth = 1;
//clamp barrel angle
if(image_angle<=180 && image_angle>80){
	image_angle = 80;	
}
if(image_angle<340 && image_angle>180){
	image_angle = 340;	
}

//show_debug_message(image_angle);
var bulletspawnx = x+lengthdir_x(barrel_length, image_angle+barrel_direction);
var bulletspawny = y+lengthdir_y(barrel_length, image_angle+barrel_direction);

if(mouse_check_button_pressed(mb_left) && delay <= 0 && online == true){		
	if(primary_wep == "cannon"){
		with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objShell)){
			speed = 40;
			direction = other.image_angle;
		}
		delay = 20;
	}
}


if(mouse_check_button(mb_right) && delay_2nd <= 0 && online == true){
	if(secondary_wep == "machinegun"){
		with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objBullet)){
			speed = 50;
			direction = other.image_angle;
		}
		delay_2nd = 10;
	}
}

delay -= 1;
delay_2nd -= 1;	
