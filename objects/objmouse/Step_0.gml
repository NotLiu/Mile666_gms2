/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!audio_is_playing(snd_pitstop) && play){
	audio_play_sound(snd_pitstop, 10, 1);
}

if(hover == true && mouse_check_button_pressed(mb_left)){
	audio_stop_all();
	play = false;
	//audio_play_sound(snd_impact, 10, 0);
	global.control = 0;
	audio_play_sound(snd_main, 10, 1);	
	
	if(alarm[0] = -1){
		alarm[0] = 150;
	}
	
}