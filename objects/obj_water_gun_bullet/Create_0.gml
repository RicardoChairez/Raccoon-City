/// @description Insert description here
// You can write your code in this editor
up = false;
down = false;
right = false
left = false;


if(obj_detective.sprite_index = spr_detective_up || obj_detective.sprite_index = spr_detective_up_still){
	up = true;
}
else if(obj_detective.sprite_index = spr_detective_left || obj_detective.sprite_index = spr_detective_left_still){
	left = true;
}
else if(obj_detective.sprite_index = spr_detective_down || obj_detective.sprite_index = spr_detective_down_still){
	down = true;
}
else if(obj_detective.sprite_index = spr_detective_right || obj_detective.sprite_index = spr_detective_right_still){
	right = true;
}

audio_play_sound(snd_shoot, 0 , false);