/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_detective) < 16 && keyboard_check(vk_space) && !obj_detective.is_active && obj_detective.holding_burrito){
	room_goto(rm_boss);
}