/// @description Insert description here
// You can write your code in this editor


if(distance_to_object(obj_detective) < 16 && keyboard_check(vk_space) && !obj_detective.is_active){
	audio_play_sound(snd_interact, 0, false);
	obj_detective.is_active = true;
	var camera_x = camera_get_view_x(view_get_camera(0));
	var camera_y = camera_get_view_y(view_get_camera(0));
	global.dialogue_array[0] = "I think 'STOP' would have conveyed this nicely. Just a thought...";
	global.dialogue_array_size = 1;
	var lamp_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
}