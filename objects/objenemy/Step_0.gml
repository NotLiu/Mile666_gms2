/// @description Insert description here
// You can write your code in this editor

if(curr_hlth <= 0){ //dies
	objGameManager.cash += 100*cash_mult;
	objGameManager.pts += 100*pt_mult;
	instance_destroy();
}