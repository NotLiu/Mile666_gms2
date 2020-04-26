/// @description Insert description here
// You can write your code in this editor

if(dist_delay<=0 && dist < 666 && running == true){
	dist += 1;	
	dist_delay = dist_delay_set;
	if(dist/global.level >= 50){
		global.level += 1;
		show_debug_message("PITSTOP");
	}
}

if(global.bossfight == true || global.pitstop == true){
	with(objParralax){
		bg1_spd = 0;
		bg2_spd = 0;
		bg3_spd = 0;
	}
	
	running = false;
}
else{ //reset to default
	with(objParralax){
		bg1_spd = 8;
		bg2_spd = 4;
		bg3_spd = 2;
	}
	
	running = true;
}
dist_delay -= 1;