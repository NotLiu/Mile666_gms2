/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("D")) && x_vel < x_max_vel){
	x_vel += spd;
	image_xscale = 1;
}

if(keyboard_check(ord("A")) && x_vel > -x_max_vel){
	x_vel -= spd;
	image_xscale = -1;
}


if(place_meeting(x+x_vel, y, objcollidenottank)){ //check collisions horizontal axis
	while(!place_meeting(x+sign(x_vel), y, objcollidenottank)){
		x += sign(x_vel);	
	}
	x_vel = 0;
}

if(place_meeting(x, y+y_vel, objcollidenottank)){ //check collisions vertical axis
	while(!place_meeting(x, y+sign(y_vel), objcollidenottank)){
		y += sign(y_vel);	
	}
	
	y_vel = 0;
}
 
if(keyboard_check_pressed(vk_space) && place_meeting(x, y+sprite_height/2, objcollidenottank)){ // if on ground you can jump
	y_vel -= jump_vel;
}

if(place_meeting(x,y,objtank)){
	if(keyboard_check_pressed(ord("E"))){
		objtank.online = true;
		instance_destroy();
	}
}

y += y_vel;
y_vel += grav;

if(x_vel != 0){	
	x += x_vel;
}

x_vel = 0;