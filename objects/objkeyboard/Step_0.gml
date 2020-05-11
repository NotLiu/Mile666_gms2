/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(hover == true && mouse_check_button_pressed(mb_left)){
	audio_play_sound(snd_impact, 10, 0);
	global.control = 1;
	room_goto_next();	
}