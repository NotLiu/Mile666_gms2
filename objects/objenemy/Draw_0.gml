/// @description Insert description here
// You can write your code in this editor

var health_ratio = curr_hlth/hlth;

draw_line_width_color(x-2,y-30, x+sprite_width+2,y-30,16, c_white,c_white);
draw_line_width_color(x,y-30, x+sprite_width,y-30,10, c_red,c_red); //back of health bar
draw_line_width_color(x,y-30, x+sprite_width*health_ratio,y-30,10, c_lime,c_lime); //front of health bar

draw_self();

//flash
if(flashAlpha > 0){
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flashColor, flashAlpha);
	
	shader_reset(); 
}