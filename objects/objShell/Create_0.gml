/// @description Insert description here
// You can write your code in this editor

image_angle = objbarrel.image_angle;
contact_ground = false;
notdone = true;

proj_grav = 1;

tank_y = objtank.y_vel;
proj_y = 0;
max_y = 60;

dmg = 5;

part = part_system_create();
emitter = part_emitter_create(part);

type = part_type_create();

part_system_depth(part, 10);
part_type_sprite(type, spritecollisionpart,0,0,0);
part_type_size(part, 2, 3, -.04, 0);
part_type_life(type, 10, 30);
part_type_scale(type, 2, 3);
part_type_speed(part, 0.001, .003, 0, 0);
part_type_alpha3(part, .3, 1, 0);

