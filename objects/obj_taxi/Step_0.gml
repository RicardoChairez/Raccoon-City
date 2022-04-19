
if(room_ready && keyboard_check_released(vk_space)){
	show_debug_message("here?");
	room_goto(rm_city);
	
}

if(!instance_exists(obj_dialogue)){
	var lay_id = layer_get_id("Background");
	layer_hspeed(lay_id, 0);
	layer_vspeed(lay_id, 0);
	room_ready = true;
}

