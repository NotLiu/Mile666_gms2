/// @description Insert description here
// You can write your code in this editor

if(dist_delay<=0 && dist < 666 && running == true){
	dist += 1;	
	dist_delay = dist_delay_set;
	if(dist/global.level >= 50){
		global.level += 1;
		global.pitstop = true;
		show_debug_message("PITSTOP");
		boss_beat = true;

	}
}

if(boss_beat == true && room != roomstore){
	show_debug_message("####");
	room_goto(roomstore);	
	/*with(objtank){
		online = false;	
	}*/
}
show_debug_message(ds_list_size(potential_mon));
show_debug_message(ds_list_find_value(potential_mon,irandom_range(0,ds_list_size(potential_mon)-1)));
if(global.bossfight == true || global.pitstop == true){
	with(objParralax){
		bg1_spd = 0;
		bg2_spd = 0;
		bg3_spd = 0;
	}
	
	running = false;
}
else{ //reset to default
	running = true;
}
dist_delay -= 1;

//spawn enemies
if(room == roomgame && alarm[0] = -1 && enemy_cnt <= 10){
	var random_spawn = irandom_range(800/global.level/5,1000/global.level/5);
	alarm[0] = random_spawn;
}

if(hlth <= 0){
	room_goto(room3);
}