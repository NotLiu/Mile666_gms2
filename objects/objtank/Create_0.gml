/// @description Insert description here
// You can write your code in this editor
depth = 0;
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
x_max = 15;
y_max = 20;

jump_vel = 20;
spd = 2.5;
grav_set = 1;
grav = grav_set;

boosters = objGameManager.boost;
boost_max = 100;
boost_amt = boost_max;
boost_vel = 2;
boost_min_y = 200;

//jump particles
part = part_system_create();
emitter = part_emitter_create(part);

type = part_type_create();
part_system_depth(part, 10);
part_type_sprite(type, sprite3, 0, 0, 0);
part_type_size(type, 2, 3, -.04, 0);
part_type_direction(type, -210, -240, 5, 0); 
part_type_speed(type, 1, 3, 0, 0);
part_type_alpha3(type, .3, 1, 0);
part_type_life(type, 10, 30);

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

// iframes
iframe = false;
set_iframe = 100;
iframe_delay = set_iframe;

//flash
flashAlpha = 0;
flashColor = c_white;