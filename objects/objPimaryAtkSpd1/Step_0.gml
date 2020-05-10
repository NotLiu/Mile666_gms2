/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(hover == true && mouse_check_button_pressed(mb_left)){
	global.control = 1;
	room_goto_next();	
}