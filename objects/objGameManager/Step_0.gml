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

//spawn enemies
if(room == roomgame && alarm[0] = -1 && enemy_cnt <= 10){
	var random_spawn = irandom_range(400/global.level/5,500/global.level/5);
	alarm[0] = random_spawn;
}