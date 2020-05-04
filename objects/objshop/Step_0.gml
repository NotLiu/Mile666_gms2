/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,objplayer) && keyboard_check_pressed(ord("E")) && shop_menu == noone){
	shop_menu = instance_create_depth(x,y,-100,objshopmenu);
	//get booster
	objtank.boosters = true;
}

