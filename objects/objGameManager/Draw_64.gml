/// @description Insert description here
// You can write your code in this editor

draw_set_font(font0);

draw_text_color(50,30,"Mile " + string(dist), c_yellow, c_yellow, c_yellow, c_yellow, 1);

draw_text_color(32,725, "HEALTH: ", c_aqua, c_red, c_fuchsia, c_maroon, 1);

draw_text_color(room_width - 300, 30, "CASH: " + string(cash), c_white, c_white, c_white, c_white, 1);

draw_text_color(room_width - 50, 725, string(global.level), c_black,c_black,c_black,c_black, 1);

//booster gauge

if(boost = true && room != room3){
	var boost_ratio = objtank.boost_amt/objtank.boost_max;
	
	draw_line_width_color(30,210+3, 30,490,22, c_white,c_white);
	draw_line_width_color(30,220, 30,480,14, c_gray,c_gray); //back of health bar
	draw_line_width_color(30,480-260*boost_ratio, 30,220 + 260,14, c_orange,c_orange); //front of health bar
}

for(var i=0; i<hlth; i+=1){
	draw_sprite(sprite15, -1, 180 + 15*i, 720);
}