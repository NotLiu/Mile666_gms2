/// @description Insert description here
// You can write your code in this editor

//part_particles_create(1,0,0,part,10);


part_emitter_region(part, emitter, mouse_x-150,mouse_x-90,mouse_y-150,mouse_y-90,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(part, emitter, type, 1);