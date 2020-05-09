/// @description Insert description here
// You can write your code in this editor
global.pitstop = true;


intro = true;
player = noone;
if(global.level == 1){
	scr_notification("Press 'E' to interact!");
}

objGameManager.hlth = 10;
objGameManager.enemy_cnt = 0;
objGameManager.dist = 50*(global.level);