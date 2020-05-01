/// @description Insert description here
// You can write your code in this editor

instance_destroy();
objGameManager.hlth -= 1

part_emitter_region(part, emitter, x-30,x+90,y-90,y,ps_shape_line,ps_distr_gaussian);
part_emitter_burst(part, emitter, type, irandom_range(5,10));