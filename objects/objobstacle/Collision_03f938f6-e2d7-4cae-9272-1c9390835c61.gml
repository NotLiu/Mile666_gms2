/// @description Insert description here
// You can write your code in this editor

if(objtank.iframe == false){
	objGameManager.hlth -= 1;
	objtank.iframe = true;
	objtank.flashAlpha = 1;
	objscreenshake.shake_value = 3;
	audio_play_sound(snd_explosion, 10, 0);
}

part_emitter_region(part, emitter, x-30,x+90,y-90,y,ps_shape_line,ps_distr_gaussian);
part_emitter_burst(part, emitter, type, irandom_range(5,10));

instance_destroy();