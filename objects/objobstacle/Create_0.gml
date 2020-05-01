/// @description Insert description here
// You can write your code in this editor

part = part_system_create();
type = part_type_create();
emitter = part_emitter_create(part);

part_system_depth(part, 10);
part_type_sprite(type, sprite3, 0, 0, 0);
part_type_size(type, 2, 3, -.04, 0);
part_type_direction(type, 50, 180, 5, 0); 
part_type_speed(type, 0.001, .003, 0, 0);
part_type_alpha3(type, .3, 1, 0);
part_type_life(type, 10, 30);