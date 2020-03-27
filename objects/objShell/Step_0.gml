/// @description Insert description here
// You can write your code in this editor

if(!place_meeting(x,y,objcollide)){
	proj_y += proj_grav;

	image_angle -= 1; 	
	y += tank_y + proj_y;
}
else{
	speed = 0;
	x -= 30;	
}

if(alarm[0]==-1){ //destroy shell after time
	alarm[0] = 100;	
}