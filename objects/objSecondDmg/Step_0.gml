/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(hover == true && mouse_check_button_pressed(mb_left)){
	if(objGameManager.cash >= 300){
		objGameManager.cash -= 300;
		objGameManager.second_dmg += 3;
		scr_notification("Secondary Weapon Damage Upgraded!");
		audio_play_sound(snd_coin, 10, 0);
	}
}