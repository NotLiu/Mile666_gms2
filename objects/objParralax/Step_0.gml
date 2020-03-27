/// @description Insert description here
// You can write your code in this editor


// doubled length of sprite and reset at half to make smooth transition
with(objbg1){
	x -= other.bg1_spd;
	if(x + sprite_width/2 <= 0){
		x = 0;	
	}
}

with(objbg2){
	x -= other.bg2_spd;
	if(x + sprite_width/2 <= 0){
		x = 0;	
	}
}

with(objbg3){
	x -= other.bg3_spd;
	if(x + sprite_width/2 <= 0){
		x = 0;	
	}
}