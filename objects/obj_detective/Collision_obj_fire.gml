/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_car_crash, 0 , false);

if(obj_detective.sprite_index = spr_detective_up || obj_detective.sprite_index = spr_detective_up_still){
	TweenEasyMove(x, y, x, y+64, 0, 10, EaseOutCubic);
}
else if(obj_detective.sprite_index = spr_detective_left || obj_detective.sprite_index = spr_detective_left_still){
	TweenEasyMove(x, y, x+64, y, 0, 10, EaseOutCubic);
}
else if(obj_detective.sprite_index = spr_detective_down || obj_detective.sprite_index = spr_detective_down_still){
	TweenEasyMove(x, y, x, y-64, 0, 10, EaseOutCubic);
}
else if(obj_detective.sprite_index = spr_detective_right || obj_detective.sprite_index = spr_detective_right_still){
	TweenEasyMove(x, y, x-64, y, 0, 10, EaseOutCubic);
}

obj_detective.is_active = true;
var camera_x = camera_get_view_x(view_get_camera(0));
var camera_y = camera_get_view_y(view_get_camera(0));
global.dialogue_array[0] = "Oh she hot!";
global.dialogue_array_size = 1;
var fire_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
