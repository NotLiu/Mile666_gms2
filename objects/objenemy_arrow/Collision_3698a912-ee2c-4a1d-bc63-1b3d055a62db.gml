/// @description Insert description here
// You can write your code in this editor

if(objtank.iframe == false){
	objGameManager.hlth -= 1;
	objtank.iframe = true;
	objtank.flashAlpha = 1;
	objscreenshake.shake_value = 3;
	audio_play_sound(snd_explosion, 10, 0);
}

instance_destroy();