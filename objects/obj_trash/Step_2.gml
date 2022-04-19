/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor


if(distance_to_object(obj_detective) < 16 && keyboard_check(vk_space) && !obj_detective.is_active){
	audio_play_sound(snd_interact, 0, false);
	obj_detective.is_active = true;
	var camera_x = camera_get_view_x(view_get_camera(0));
	var camera_y = camera_get_view_y(view_get_camera(0));
	global.dialogue_array[0] = "*you dig in the trash like the dirty raccoon you are*";
	global.dialogue_array[1] = "You find nothing valuable. How surpising!";
	global.dialogue_array_size = 2;
	var trash_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
}
