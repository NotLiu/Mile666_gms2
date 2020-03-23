// @description Insert description here
// You can write your code in this editor


if(keyboard_check(ord("D"))){ //check no collision to right
	if(x_vel < x_max){
		x_vel += spd;	
	}

}

if(keyboard_check(ord("A"))){ //check no collision to right
	if(x_vel > x_min){	
		x_vel -= spd/1.5;	
	}
}

if(place_meeting(x+x_vel, y, objcollide)){
	while(!place_meeting(x+sign(x_vel), y, objcollide)){
		x += sign(x_vel);	
	}

	x_vel = 0;
}

if(place_meeting(x, y+y_vel, objcollide)){
	while(!place_meeting(x, y+sign(y_vel), objcollide)){
		y += sign(y_vel);	
	}

	y_vel = 0;
}
else{
	x_vel = x_vel/1.2;	
}
y += y_vel;


y_vel += grav;



if(keyboard_check_pressed(vk_space) && ! place_meeting(x, y-y_vel, objcollide) && place_meeting(x, y+y_vel, objcollide)){ //jump if nothing above
	y_vel -= jump_vel;
	part_emitter_region(part, emitter, x-50,x-15,y-50,y-30,ps_shape_ellipse,ps_distr_linear);
	part_emitter_burst(part, emitter, type, irandom(3));
	show_debug_message("33#");
}


if(x_vel != 0){	
	x += x_vel;
	
	if(x_vel < 0){
		x_vel += x_decel;
	}
	
	if(x_vel > 0){
		x_vel -= x_decel;
	}
}

show_debug_message(x_vel);
