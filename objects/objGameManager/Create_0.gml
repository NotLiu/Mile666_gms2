/// @description Insert description here
// You can write your code in this editor
boss_beat = false;
hlth = 5;
dist = 49;

dist_delay_set = 70;
dist_delay = dist_delay_set;
running = true;

upgrade_pt = 0;
pts = 0;
cash = 0;

potential_mon = ds_list_create();
ds_list_add(potential_mon, objenemy);


global.level = 1;
global.bossfight = false;
global.pitstop = false;