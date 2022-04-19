/// @description Insert description here
// You can write your code in this editor
if(obj_baby_bomba.sprite_index != spr_baby_explode){
	TweenEasyMove(x, y, x, y-64, 0, 10, EaseOutCubic);
	obj_detective.is_active = true;
	var camera_x = camera_get_view_x(view_get_camera(0));
	var camera_y = camera_get_view_y(view_get_camera(0));
	global.dialogue_array[0] = "back off hahmie boss needs his space";
	global.dialogue_array_size = 1;
	var bomba_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);

}
