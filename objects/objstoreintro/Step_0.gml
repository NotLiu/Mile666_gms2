/// @description Insert description here
// You can write your code in this editor

if(objtank.x != 250 && intro == true){
	with(objtank){
		online = false;
		x=lerp(x, 250.00, .05);
		if(abs(x-250)<0.5){
			x = 250	
		}
	}
}
else if(objtank.x == 250){
	intro = false;	
	show_debug_message("DD");
}
