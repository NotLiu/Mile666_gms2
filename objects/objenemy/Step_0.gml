/// @description Insert description here
// You can write your code in this editor

if(curr_hlth <= 0){ //dies
	objGameManager.cash += 100*cash_mult;
	objGameManager.pts += 100*pt_mult;
	instance_destroy();
}



if(x != rand_pos_x && intro == true){
	x=lerp(x, rand_pos_x, .05);
	y=lerp(y, rand_pos_y, .05);
	if(abs(x-rand_pos_x)<0.5){
		online = false;
		x = rand_pos_x;
	}
	
}
else if(x == rand_pos_x){
	intro = false;	
	path_start(path0,2,	path_action_continue, false);
}
