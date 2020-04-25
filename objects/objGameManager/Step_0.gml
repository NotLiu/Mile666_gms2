/// @description Insert description here
// You can write your code in this editor

if(dist_delay<=0 && dist < 666){
	dist += 1;	
	dist_delay = dist_delay_set;
	if(dist/global.level >= 50){
		global.level += 1;	
	}
}
dist_delay -= 1;