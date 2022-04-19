/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_detective) < 24 && keyboard_check(vk_space) && !obj_detective.is_active){
	audio_play_sound(snd_interact, 0, false);
	obj_detective.is_active = true;
	var camera_x = camera_get_view_x(view_get_camera(0));
	var camera_y = camera_get_view_y(view_get_camera(0));
	if(instance_exists(obj_burrito2)){
		instance_destroy(obj_burrito2);
		global.dialogue_array[0] = "imma go ahead and take this";
		global.dialogue_array_size = 1;
		var baby_bomba_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
		TweenEasyMove(obj_baby_bomba.x, obj_baby_bomba.y, obj_baby_bomba.x-128, obj_baby_bomba.y, 0, 100, EaseOutCubic);
	}
	else if(instance_exists(obj_cod)){
		global.dialogue_array[0] = "from the trash hahmie? im good foo i got self respect";
		global.dialogue_array_size = 1;
		var baby_bomba_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
	}
	else if(sprite_index == spr_baby_explode){
		global.dialogue_array[0] = "He's exploding right now. Maybe it's best to leave him alone.";
		global.dialogue_array_size = 1;
		var baby_bomba_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
	}
	
	else{
		global.dialogue_array[0] = "ay foo they call me baby bomba";
		global.dialogue_array[1] = "the boss is busy right now holmes so u better back up before u get smacked up";
		global.dialogue_array[2] = "i cant lie i do be kinda   hungry doe hehe";
		global.dialogue_array_size = 3;
		var baby_bomba_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
	}
	
}