/// @description Insert description here
// You can write your code in this editor


part = part_system_create();
emitter = part_emitter_create(part);

type = part_type_create();

part_type_sprite(part, sprite2, 0, 0, 0);
part_type_size(part, .2, .5, 0, 0);

part_type_speed(part, 0.001, .003, 0, 0);
part_type_alpha3(part, 0, .5, 0);
part_type_life(part, 5, 10);

part_type_color3(part, c_white, c_silver, c_teal);

