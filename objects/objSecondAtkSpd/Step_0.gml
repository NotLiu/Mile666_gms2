/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(hover == true && mouse_check_button_pressed(mb_left)){
	if(objGameManager.cash >= 300 && objGameManager.delay_2nd_set > 4){
		objGameManager.cash -= 300;
		objGameManager.delay_2nd_set -= 1;
		scr_notification("Secondary Weapon Attack Speed Upgraded!");
	}
}