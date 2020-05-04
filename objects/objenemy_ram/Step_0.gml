/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(x == rand_pos_x && type == 2){
	intro = false;	
}

if(intro == false){
	image_angle = lerp(image_angle,point_direction(x,y,objtank.x,objtank.y),0.1);
	if(image_angle - point_direction(x,y,objtank.x,objtank.y) < 0.1){
		direction = point_direction(x,y,objtank.x,objtank.y);
		speed = 8;
	}
}