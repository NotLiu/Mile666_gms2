/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_text_color(x, y, text, c_white,c_white,c_white,c_white, 1);

if(fade == true){
	image_alpha -= .5;	
}
if(image_alpha == 0){
	instance_destroy();
}

draw_set_halign(fa_left);	
draw_self();