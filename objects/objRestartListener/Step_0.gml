/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("3")) && keyboard_check(ord("6"))){
	room_goto(roomintro);	
	if(room != roomintro){
		instance_destroy(objGameManager);
	}
}