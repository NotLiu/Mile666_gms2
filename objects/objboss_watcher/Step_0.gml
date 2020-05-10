/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(x == rand_pos_x){
	intro = false;	
	path_start(path1,.9,path_action_continue, false);
}

show_debug_message(fire_delay);
show_debug_message(fire);
if(fire_delay <= 0 && fire){
	var num_atk = irandom_range(1,4);
	var atk_type = irandom_range(1,3);
	show_debug_message("BOSSFIRE");
	if(atk_type == 1 || atk_type == 2){ // fire projectiles 3 num_atk times
		for(j = 0; j<num_atk; j++){
			for(i = 0; i<3; i++){
				with(instance_create_depth(x,y,2,objenemy_atk)){
					direction = point_direction(x,y,objtank.x,objtank.y)-45 + 45*other.i;
					speed = 10;
				}
			}
		}
	}
	else{
		for(i = 0; i<num_atk; i++){
			var random_y = irandom_range(100,650);
			with(instance_create_depth(1306, random_y,2,objenemy_arrow)){
				alarm[1] = 50;
			}
		}
	}
	fire_delay = fire_delay_set;
}

fire_delay -= 1;