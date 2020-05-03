/// @description Insert description here
// You can write your code in this editor
//spawn random number of enemies
var random_cnt = irandom_range(0,2);
for(i = 0; i<random_cnt; i++){
	var rand_mon = ds_list_find_value(potential_mon,irandom_range(0,ds_list_size(potential_mon)-1));
	if(rand_mon == 1){
		var en1 = instance_create_depth(1440,320,0,objenemy_skully);
		var rand_s = 1 + random_range(-.3, .3);
		en1.image_xscale = rand_s;
		en1.image_yscale = rand_s;
	}
	if(rand_mon == 2){
		var en2 = instance_create_depth(1440,320,0,objenemy_ram);
		var rand_s = 1 + random_range(0, .3);
		en2.image_xscale = rand_s;
		en2.image_yscale = rand_s;
	}
	enemy_cnt += 1;
}