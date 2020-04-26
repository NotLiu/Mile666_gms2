/// @description Insert description here
// You can write your code in this editor
if(room == roomstore){
	online = false	
}
else{
	online = true;
}
image_speed = 1;
image_xscale = 1;

x_vel = 0;
y_vel = 0;

x_decel = 0.5;

x_min = -10;
x_max = 10;
y_max = 15;

jump_vel = 15;
spd = 2;
grav = 0.75;

boosters = true;
boost_amt = 100;
boost_vel = 1.4;
boost_min_y = 200;

//jump particles
part = part_system_create();
emitter = part_emitter_create(part);

type = part_type_create();
part_system_depth(part, 10);
part_type_sprite(part, sprite3, 0, 0, 0);
part_type_size(part, 2, 3, -.04, 0);
part_type_direction(part, 50, 180, 5, 0); 
part_type_speed(part, 0.001, .003, 0, 0);
part_type_alpha3(part, .3, 1, 0);
part_type_life(part, 10, 30);

//projectile
barrel = noone;
barrel_offsetx = 50;

barrel_direction = point_direction(0, 0, barrel_offsetx, 0);
barrel_length = point_distance(0, 0, barrel_offsetx, 0);

delay = 20;
delay_2nd = 10;

primary_wep = "cannon";
secondary_wep = "machinegun";


part_type_color3(part, c_white, c_silver, c_teal);