/// @description Insert description here
// You can write your code in this editor

//exit button
instance_create_depth(x+sprite_width,y, -200, objMenuExit);

//shopkeep
instance_create_depth(x+30, y+50, -200, objShopkeep);

//primary atk spd up
instance_create_depth(x+400, y+50, -200, objPrimary);
//secondary atk spd up
instance_create_depth(x+700, y+50, -200, objSecondary);