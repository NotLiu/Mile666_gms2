/// @description Insert description here
// You can write your code in this editor

image_angle = objbarrel.image_angle;

contact_ground = false;
notdone = true;

proj_grav = 1;

tank_y = objtank.y_vel;
proj_y = 0;
max_y = 60;

part = part_system_create();
emitter = part_emitter_create(part);

type = part_type_create();

part_system_depth(part, 10);
part_type_sprite(part, spritecollisionpart,0,0,0);
part_type_size(part, 2, 3, -.04, 0);
part_type_life(part, 10, 30);
part_type_scale(part, 2, 3);
part_type_speed(part, 0.001, .003, 0, 0);
part_type_alpha3(part, .3, 1, 0);

part2 = part_system_create();
emitter2 = part_emitter_create(part2);

muzzle = part_type_create();

part_system_depth(part2, -10);
part_type_sprite(part2, spritemuzzle,0,0,0);
part_type_size(part2, 2, 3, -.04, 0);
part_type_life(part2, 10, 15);
part_type_alpha3(part2,.3,.5,.8)

part_emitter_region(part2, emitter2, x-10,x+10,y-30,y,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(part2, emitter2, muzzle, irandom_range(1,3));

