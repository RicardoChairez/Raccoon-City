/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_car_crash, 0 , false);

if(obj_car1.sprite_index == spr_carright){
	TweenEasyMove(x, y, x+128, y, 0, 10, EaseOutCubic);
}

if(obj_car1.sprite_index == spr_cardown){
	TweenEasyMove(x, y, x, y+128, 0, 10, EaseOutCubic);
}

if(obj_car1.sprite_index == spr_carleft){
	TweenEasyMove(x, y, x-128, y, 0, 10, EaseOutCubic);
}

if(obj_car1.sprite_index == spr_carup){
	TweenEasyMove(x, y, x, y-128, 0, 10, EaseOutCubic);
}

obj_detective.is_active = true;
var camera_x = camera_get_view_x(view_get_camera(0));
var camera_y = camera_get_view_y(view_get_camera(0));
global.dialogue_array[0] = "choo choo";
global.dialogue_array_size = 1;
var car_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
