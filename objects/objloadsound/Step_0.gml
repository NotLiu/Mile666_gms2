/// @description Insert description here
// You can write your code in this editor
if(room_get_name(room) == "room_load"){
	if(audio_group_is_loaded(audiogroup_default)){
		room_goto_next();	
	}else{
		exit;	
	}
}