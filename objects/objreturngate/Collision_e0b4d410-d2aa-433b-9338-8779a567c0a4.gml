/// @description Insert description here
// You can write your code in this editor
room_goto(roomgame);
global.level += 1;
global.pitstop = false;
objGameManager.boss_beat = false;
objGameManager.hlth = objGameManager.hlth_set;
objGameManager.running = true;
audio_play_sound(snd_main, 10, 0);

with(objParralax){
	bg1_spd = 8;
	bg2_spd = 4;
	bg3_spd = 2;
}

//add diff obst and enemies to potent

if(global.level == 2){
	//obs
	ds_list_add(objGameManager.potential_obstacles,2);
	ds_list_add(objGameManager.potential_obstacles,2);
	ds_list_add(objGameManager.potential_obstacles,2);
	//enemies
	ds_list_add(objGameManager.potential_mon,2);
	ds_list_add(objGameManager.potential_mon,2);
	ds_list_add(objGameManager.potential_mon,2);
}


