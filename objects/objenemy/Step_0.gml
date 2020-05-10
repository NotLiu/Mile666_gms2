/// @description Insert description here
// You can write your code in this editor

if(curr_hlth <= 0){ //dies
	objGameManager.cash += 100*cash_mult;
	objGameManager.pts += 100*pt_mult;
	instance_destroy();
	objGameManager.enemy_cnt -= 1;
	if(boss == true){
		global.bossfight = false;
		objGameManager.boss_beat = true;
	}
}



if(x != rand_pos_x && intro == true){
	x=lerp(x, rand_pos_x, adj_spd);
	y=lerp(y, rand_pos_y, adj_spd);
	if(abs(x-rand_pos_x)<0.5){
		intro = false;
		x = rand_pos_x;
	}
	
}


//flash
if(flashAlpha > 0){
	flashAlpha -= 0.08;
}
