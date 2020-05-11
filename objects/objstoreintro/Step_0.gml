/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(snd_pitstop)){
	audio_play_sound(snd_pitstop,10, 1);
}
if(objtank.x != 250 && intro == true){
	with(objtank){
		x=lerp(x, 250.00, .05);
		if(abs(x-250)<0.5){
			online = false;
			x = 250	
		}
	}
}
else if(objtank.x == 250){
	intro = false;	
	if(player == noone){
		player = instance_create_depth(objtank.x,objtank.y,-1, objplayer);
	}
}

with(objenemy){
	instance_destroy();	
}
with(objobstacle){
	instance_destroy();	
}