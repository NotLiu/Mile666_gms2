/// @description Insert description here
// You can write your code in this editor

if(dist_delay<=0 && dist < 666 && running == true && boss_banner == noone && boss_beat == false){
	dist += 1;	
	dist_delay = dist_delay_set;
	if(dist/global.level >= milethresh){
		//global.pitstop = true;
		dist = global.level*50;
		boss_banner = instance_create_depth(0,room_height/2-sprite_height/2 -200,-100, objboss_notice);
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
if(room == roomgame && alarm[0] = -1 && enemy_cnt <= 4 + 2*global.level && global.bossfight == false){
	var random_spawn = irandom_range(650/global.level/5 + (dist_delay_set - 70)*5,900/global.level/5 + (dist_delay_set - 70)*5);
	alarm[0] = random_spawn;
}
//spawn obstacles
if(room == roomgame && alarm[1] = -1 && global.bossfight == false){
	var random_spawn_obs = irandom_range(800/global.level/5 + (dist_delay_set - 70)*5,1600/global.level/5 + (dist_delay_set - 70)*5);
	alarm[1] = random_spawn_obs;
}


if(hlth <= 0 && room != room3){
	room_goto(room3);
}
