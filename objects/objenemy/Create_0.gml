/// @description Insert description here
// You can write your code in this editor
randomize();
//enemy default health
depth = 1
rand_pos_x = irandom_range(750,1320);//spawn pos
rand_pos_y = irandom_range(30, 520);

intro = true;

hlth = 100;
curr_hlth = hlth;

cash_mult = 1;
pt_mult = 10;

fire_delay_set = 150;
fire_delay = fire_delay_set;
adj_spd = 0.05;

fire = true; // does enemy fire projectile?

type = 1;
boss = false;

//flash
flashAlpha = 0;
flashColor = c_red;