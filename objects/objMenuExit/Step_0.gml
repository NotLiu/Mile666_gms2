/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left)){
	show_debug_message("click");
	with(objshopmenu){
		instance_destroy();
	}
	objshop.shop_menu = noone;	
}

if(keyboard_check_pressed(vk_escape)){
	with(objshopmenu){
		instance_destroy();
	}
	objshop.shop_menu = noone;	
}