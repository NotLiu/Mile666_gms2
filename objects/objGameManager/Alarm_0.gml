/// @description Insert description here
// You can write your code in this editor
//spawn random number of enemies
var random_cnt = irandom_range(0,1);
for(i = 0; i<random_cnt; i++){
	var rand_mon = ds_list_find_value(potential_mon,irandom_range(0,ds_list_size(potential_mon)-1));
	if(rand_mon == 1){
		instance_create_depth(1440,320,0,objenemy);
	}
	enemy_cnt += 1;
}