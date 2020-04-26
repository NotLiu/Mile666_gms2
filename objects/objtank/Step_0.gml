// @description Insert description here
// You can write your code in this editor

show_debug_message(x);
if(online == true){
	if(keyboard_check(ord("D"))){
		if(x_vel < x_max){
			x_vel += spd;	
		}

	}

	if(keyboard_check(ord("A"))){
		if(x_vel > x_min){	
			x_vel -= spd/1.5;	
		}
	}

	if(place_meeting(x+x_vel, y,objcollidetank)){ //check collisions horizontal axis
		while(!place_meeting(x+sign(x_vel), y, objcollidetank)){
			x += sign(x_vel);	
		}
	
		if(x_vel < 0 && objGameManager.dist_delay_set <= 120){
			objGameManager.dist_delay_set += 1;
			objParralax.bg1_spd -= .15;
			objParralax.bg2_spd -= .12;
			objParralax.bg3_spd -= .03;
		}
		else if(x_vel > 0 && objGameManager.dist_delay_set >= 50){ //default dist delay at 70  
			objGameManager.dist_delay_set -= 1;
			objParralax.bg1_spd += .15;
			objParralax.bg2_spd += .12;
			objParralax.bg3_spd += .03;
		}
		show_debug_message(objGameManager.dist_delay_set);
		x_vel = 0;
	}

	//if(objGameManager.dist_delay != 70  

	if(place_meeting(x, y+y_vel, objcollide)){ //check collisions vertical axis
		while(!place_meeting(x, y+sign(y_vel), objcollide)){
			y += sign(y_vel);	
		}
		if(boost_amt < 100 && place_meeting(x, y+sprite_height/2, objcollide)){
		boost_amt += 1
		}
		y_vel = 0;
	}

	y += y_vel;


	y_vel += grav;



	if(keyboard_check_pressed(vk_space) && ! place_meeting(x, y-y_vel, objcollide) && place_meeting(x, y+sprite_height/2, objcollide)){ //jump if nothing above
		y_vel -= jump_vel;
		part_emitter_region(part, emitter, x-90,x-55,y-70,y-50,ps_shape_ellipse,ps_distr_linear);
		part_emitter_burst(part, emitter, type, irandom_range(1,3));
		keyboard_clear(vk_space);
	}
	else if(keyboard_check(vk_space) && !place_meeting(x, y+sprite_height/2, objcollide) && boosters = true && boost_amt > 0){ //if not on ground and have boost upgrade
		part_type_direction(part, 250, 300, 5, 1); 

		y_vel -= boost_vel;
	
		part_emitter_region(part, emitter, x-90,x-55,y-70,y-50,ps_shape_ellipse,ps_distr_linear);
		part_emitter_burst(part, emitter, type, irandom_range(1,3));
		boost_amt -= 1;
		show_debug_message("EEEEE");
	}
	else{
		part_type_direction(part, 50, 180, 5, 0); 
	}
	show_debug_message(boost_amt);


	if(x_vel != 0){	
		x += x_vel;
	
		if(x_vel < 0){
			x_vel += x_decel;
		}
	
		if(x_vel > 0){
			x_vel -= x_decel;
		}
	}

	if(abs(x_vel) < 0.5){
		x_vel = 0;
	}
}
else{
	image_speed = 0;	
}

if(barrel == noone){
	//create barrel
	barrel = instance_create_depth(x, y, 1, objbarrel);
}