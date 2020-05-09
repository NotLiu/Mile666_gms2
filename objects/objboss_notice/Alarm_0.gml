/// @description Insert description here
// You can write your code in this editor
instance_destroy();
objGameManager.boss_banner = noone;

if(global.level == 1 && global.bossfight == false){
	instance_create_depth(1560,300,0, objboss_watcher);
}
else if(global.level == 2 && global.bossfight == false){
	instance_create_depth(1560, 300, 0, objboss);
}
global.bossfight = true;