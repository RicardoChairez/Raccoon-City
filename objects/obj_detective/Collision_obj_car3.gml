/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_car_crash, 0 , false);

if(obj_car3.sprite_index == spr_taxiright){
	TweenEasyMove(x, y, x+128, y, 0, 10, EaseOutCubic);
}

if(obj_car3.sprite_index == spr_pinkcardown){
	TweenEasyMove(x, y, x, y+128, 0, 10, EaseOutCubic);
}

if(obj_car3.sprite_index == spr_taxileft){
	TweenEasyMove(x, y, x-128, y, 0, 10, EaseOutCubic);
}

if(obj_car3.sprite_index == spr_pinkcarup){
	TweenEasyMove(x, y, x, y-128, 0, 10, EaseOutCubic);
}

if(x <= 128 || x >= 1238 || y <= 128 || y >= 640){
	show_debug_message("swag");
	TweenEasyMove(x, y, 224, 96, 0, 1, EaseOutCubic);
	show_debug_message(x);
	show_debug_message(y);
}

camera_x = camera_get_view_x(view_get_camera(0));
camera_y = camera_get_view_y(view_get_camera(0));
obj_detective.is_active = true;
global.dialogue_array[0] = "See you around!"
var labomba_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);	
