/// @description Insert description here
// You can write your code in this editor

if(dist_delay<=0 && dist < 666 && running == true){
	dist += 1;	
	dist_delay = dist_delay_set;
	if(dist/global.level >= milethresh){
		global.level += 1;
		global.pitstop = true;
		show_debug_message("PITSTOP");
		boss_beat = true;

	}
}

if(boss_beat == true && room != roomstore){

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
	running = true;
}
dist_delay -= 1;

//spawn enemies
if(room == roomgame && alarm[0] = -1 && enemy_cnt <= 4 + 2*global.level){
	var random_spawn = irandom_range(650/global.level/5,900/global.level/5);
	alarm[0] = random_spawn;
}

if(room == roomgame && alarm[1] = -1){
	var random_spawn_obs = irandom_range(300/global.level/5,1600/global.level/5);
	alarm[1] = random_spawn_obs;
}


if(hlth <= 0 && room != room3){
	room_goto(room3);
}
