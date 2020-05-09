/// @description Insert description here
// You can write your code in this editor
x = objtank.x;
y = objtank.y;

if(global.control == 0){
	if(objtank.online == true){
		image_angle = point_direction(x, y , mouse_x, mouse_y);
	}
	else{
		image_angle = 0;	
	}
}
else{
	if(objtank.online == false){
		image_angle = 0;	
	}
}