/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(x,y,objcollide) && proj_y<30){
	smoke = instance_create_layer(x,y,"Instances",objEmitter);
}

if(!place_meeting(x,y,objcollide)){
	
	if(proj_y<max_y){
		proj_y += proj_grav;
	}
	
	image_angle -= 1; 	
	y += tank_y + proj_y;
}
else{
	contact_ground = true;
	speed = 0;
	x -= 30;	
}

if(contact_ground && notdone){
	notdone = false;

	part_emitter_region(part, emitter, x-30,x+30,y-30,y,ps_shape_ellipse,ps_distr_linear);
	part_emitter_burst(part, emitter, type, irandom_range(1,3));
}

if(alarm[0]==-1){ //destroy shell after time
	alarm[0] = 150;	
}
