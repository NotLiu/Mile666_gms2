/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objplayer) && keyboard_check_pressed(ord("E")) && shop_menu == noone){
	shop_menu = instance_create_depth(100,100,-100,objshopmenu);
	//get booster
	if(objGameManager.boost = false){
		objGameManager.boost = true
		scr_notification("Boosters Unlocked!");
	}
	audio_play_sound(snd_shop, 10, 0);
}


