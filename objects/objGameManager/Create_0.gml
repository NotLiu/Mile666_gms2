/// @description Insert description here
// You can write your code in this editor
depth = -100;
boss_beat = false;
boss_banner = noone;
hlth_set = 10;
hlth = hlth_set;
dist = 0;

// tank stats - here to keep them persistent as theyll reset after we switch rooms
delay_set = 20;
delay_2nd_set = 10;
pri_dmg = 45;
second_dmg = 15;

dist_delay_set = 70;
dist_delay = dist_delay_set;
running = true;

upgrade_pt = 0;
pts = 0;
cash = 0;

enemy_cnt = 0;

potential_mon = ds_list_create();
ds_list_add(potential_mon, 1);
ds_list_add(potential_mon, 1);
ds_list_add(potential_mon, 1);
ds_list_add(potential_mon, 2);

potential_obstacles = ds_list_create();
ds_list_add(potential_obstacles, 1);
ds_list_add(potential_obstacles, 1);
ds_list_add(potential_obstacles, 1);
ds_list_add(potential_obstacles, 1);

boost = false;




global.level = 1;
global.bossfight = false;
global.pitstop = false;
