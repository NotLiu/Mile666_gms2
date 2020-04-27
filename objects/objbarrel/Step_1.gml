/// @description Insert description here
// You can write your code in this editor
x = objtank.x;
y = objtank.y;

if(objtank.online == true){
	image_angle = point_direction(x, y , mouse_x, mouse_y);
}
else{
	image_angle = 0;	
}