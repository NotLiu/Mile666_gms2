/// @description Insert description here
// You can write your code in this editor

draw_set_font(font0);

draw_text_color(50,50,"Mile " + string(dist), c_aqua, c_red, c_fuchsia, c_maroon, 1);

draw_text_color(32,730, "HEALTH: ", c_aqua, c_red, c_fuchsia, c_maroon, 1);

for(var i=0; i<hlth; i+=1){
	draw_sprite(sprite15, -1, 180 + 15*i, 725);
}