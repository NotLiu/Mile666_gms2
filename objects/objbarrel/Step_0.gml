/// @description  Insert description here
// You can write your code in this editor
depth = 1;
//control by keyboard
if(keyboard_check(vk_up)){
	image_angle += 1.5;	
}
if(keyboard_check(vk_down)){
	image_angle -= 1.5;
}

//clamp barrel angle
if(global.control == 0){
	if(image_angle<=180 && image_angle>80){
		image_angle = 80;	
	}
	if(image_angle<340 && image_angle>180){
		image_angle = 340;	
	}
}
else{
	if(image_angle < -20){
		image_angle = -20;	
	}
	if(image_angle > 80){
		image_angle = 80;	
	}
}



//show_debug_message(image_angle);
var bulletspawnx = x+lengthdir_x(barrel_length, image_angle+barrel_direction);
var bulletspawny = y+lengthdir_y(barrel_length, image_angle+barrel_direction);

if((mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_right)) && delay <= 0 && online == true){		
	//audio_play_sound(snd_explosion, 10, 0);
	audio_play_sound(snd_afterexp, 10 , 0);
	if(primary_wep == "cannon"){
		with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objShell)){
			speed = 40;
			direction = other.image_angle;
		}
		delay = objGameManager.delay_set;
	}
	objscreenshake.shake_value = .6;
}


if((mouse_check_button(mb_right) || keyboard_check(vk_left)) && delay_2nd <= 0 && online == true){
	audio_play_sound(snd_gun, 10, 0);
	if(secondary_wep == "machinegun"){
		with(instance_create_layer(bulletspawnx, bulletspawny, "Instances", objBullet)){
			speed = 50;
			direction = other.image_angle;
		}
		delay_2nd = objGameManager.delay_2nd_set;
	}
	objscreenshake.shake_value = .2;

}

delay -= 1;
delay_2nd -= 1;	

flashAlpha = objtank.flashAlpha;
