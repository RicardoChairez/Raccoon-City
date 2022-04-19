/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_detective) < 16 && keyboard_check(vk_space) && !obj_detective.is_active){
	audio_play_sound(snd_interact, 0, false);
	obj_detective.is_active = true;
	var camera_x = camera_get_view_x(view_get_camera(0));
	var camera_y = camera_get_view_y(view_get_camera(0));
	if(instance_exists(obj_water_gun)){
		global.dialogue_array[0] = "Remember to press X to use the water gun. It's really fun!";
		global.dialogue_array_size = 1;
		var peng_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
	}
	else if(instance_exists(obj_cod)){
		instance_destroy(obj_cod);
		instance_create_layer(obj_detective.x, obj_detective.y, layer_get_id("Instances"), obj_water_gun);
		global.dialogue_array[0] = "Dis for me? Awwww you   shouldn't have. :3";
		global.dialogue_array[1] = "Anyways, here's a water gun as  a token of my appreciation!";
		global.dialogue_array[2] = "(press X to shoot the water   gun)";
		global.dialogue_array_size = 3;
		sprite_index = spr_peng_dance;
		var peng_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
	}

	else{
		global.dialogue_array[0] = "Im Peng, the penguin! watch my little dance!";
		global.dialogue_array_size = 1;
		sprite_index = spr_peng_dance;
		var peng_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
	}
	
	
}