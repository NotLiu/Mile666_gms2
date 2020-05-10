/// @description Insert description here
// You can write your code in this editor

image_angle = lerp(image_angle,point_direction(x,y,objtank.x,objtank.y),0.05);
if(image_angle - point_direction(x,y,objtank.x,objtank.y) < 0.1){
	direction = point_direction(x,y,objtank.x,objtank.y);
	speed = 10;
}