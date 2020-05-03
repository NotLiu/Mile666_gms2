/// @description Insert description here
// You can write your code in this editor
var random_cnt = irandom_range(1,4);
for(i = 0; i<random_cnt; i++){
	var rand_obs = ds_list_find_value(potential_obstacles,irandom_range(0,ds_list_size(potential_obstacles)-1));
	if(rand_obs == 1){
		instance_create_depth(1500 + 40 * i,700,1,objGroundObstacle);
	}
	if(rand_obs == 2 && i mod 2 == 0){
		instance_create_depth(1500 + 40*i,	irandom_range(400,550), 1, objAirObs);
	}
}