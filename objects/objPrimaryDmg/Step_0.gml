/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(hover == true && mouse_check_button_pressed(mb_left)){
	if(objGameManager.cash >= 300){
		objGameManager.cash -= 300;
		objGameManager.pri_dmg += 7;
		scr_notification("Primary Weapon Damage Upgraded!");
	}
}