/// @description Insert description here
// You can write your code in this editor

part = part_system_create();
type = part_type_create();
emitter = part_emitter_create(part);

part_system_depth(part, 10);
part_type_sprite(type, spritecollisionpart, 0, 0, 0);
part_type_size(type, 3, 4, -.04, 0);
part_type_direction(type, 20, 0, 0, 1); 
part_type_speed(type, 8, 10, 1, 0);
part_type_alpha3(type, .3, 1, 0);
part_type_life(type, 10, 20);