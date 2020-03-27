/// @description Insert description here
// You can write your code in this editor

//part_particles_create(1,0,0,part,10);


part_emitter_region(part, emitter, x-20, x+20, y-50, y-10, ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(part, emitter, type, 1);

if(alarm[0] == -1){
	alarm[0] = 10;	
}