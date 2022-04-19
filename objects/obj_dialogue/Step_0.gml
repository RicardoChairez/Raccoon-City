/// @description Update the timecode for the dialog box.

if((keyboard_check_released(vk_space) || mouse_check_button_released(mb_left)) && at_end_destroy){
	global.dialogue_array_index++;
	if(global.dialogue_array_index >= global.dialogue_array_size){
		global.dialogue_array_index = 0;
		for(var i = 0; i < global.dialogue_array_size; i++){
			global.dialogue_array[i] = "";
		}
		global.dialogue_array_size = 0;
		obj_detective.is_active = false;
		instance_destroy(obj_dialogue);
	}
	else{
		var camera_x = camera_get_view_x(view_get_camera(0));
		var camera_y = camera_get_view_y(view_get_camera(0));
		instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
		instance_destroy(self);
	}

	
}

if(keyboard_check_released(vk_space)){
	at_end = false;
}



if(!at_end){
	dialog_t += dialog_delta;
	if (dialog_t < 0) {
		dialog_delta = 1;
		dialog_t = 0;
	}

	if (dialog_t > dialog.text_length) {
		dialog_delta = -1;
		dialog_t = dialog.text_length;	
	}
}


