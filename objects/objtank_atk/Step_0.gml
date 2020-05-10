/// @description Insert description here
// You can write your code in this editor

enemy = instance_place(x,y,objenemy);

if(enemy != noone){
	with(enemy){
		curr_hlth -= other.dmg;	
		flashAlpha = 1;
	}
	
	if(object_get_name(object_index) == objShell){
		part_emitter_region(part, emitter, x-30,x+30,y-30,y,ps_shape_ellipse,ps_distr_linear);
		part_emitter_burst(part, emitter, type, irandom_range(1,3));
	}
	instance_destroy();
}