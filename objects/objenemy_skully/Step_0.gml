/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(x == rand_pos_x){
	intro = false;	
	path_start(path0,irandom_range(1,3),path_action_continue, false);
}

if(fire_delay <= 0 && fire){
	with(instance_create_depth(x,y,2,objenemy_atk)){
		direction = point_direction(x,y,objtank.x,objtank.y);
		speed = 10;
	}
	fire_delay = fire_delay_set;
}
fire_delay -= 1;