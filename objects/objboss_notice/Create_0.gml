/// @description Insert description here
// You can write your code in this editor
image_speed = .25;

if(alarm[0] == -1){
	alarm[0] = 100;
}

with(objobstacle){
	instance_destroy();	
}
//audio_stop_all();
if(!audio_is_playing(snd_boss)){
	audio_stop_all();
	audio_play_sound(snd_boss, 10, 0);
	audio_stop_sound(snd_boss_cont);
}