/// @description Insert description here
// You can write your code in this editor
if(!is_active){
	if(keyboard_check(vk_up) && !keyboard_check(vk_down)){
		if(tilemap_get_at_pixel(collision_tilemap, x, bbox_top) == 0){
			y-=3;
		}
		sprite_index = spr_detective_up;
	}
	if(keyboard_check(vk_down) && !keyboard_check(vk_up)){
		if(tilemap_get_at_pixel(collision_tilemap, x, bbox_bottom) == 0){
			y +=3;
		}
		sprite_index = spr_detective_down;
		}
	if(keyboard_check(vk_right) && !keyboard_check(vk_left)){
		if(tilemap_get_at_pixel(collision_tilemap, bbox_right, y) == 0){
			x +=3;
		}
		sprite_index = spr_detective_right;
		}
	if(keyboard_check(vk_left) && ! keyboard_check(vk_right)){
		if(tilemap_get_at_pixel(collision_tilemap, bbox_left, y) == 0){
			x -=3;
		}
		sprite_index = spr_detective_left;
	}
}

if(x == xprevious && y == yprevious)
{
	if (sprite_index == spr_detective_up){
		sprite_index = spr_detective_up_still;
	}
	if (sprite_index == spr_detective_down){ 
		sprite_index = spr_detective_down_still;
	}
	if (sprite_index == spr_detective_right){ 
		sprite_index = spr_detective_right_still;
	}
	if (sprite_index == spr_detective_left){ 
		sprite_index = spr_detective_left_still;
	}
}

if(x <= 64 + 16 || x >= 1366 || y <= 64 + 16 || y >= 704 - 16){
	TweenEasyMove(x, y, 288, 96, 0, 1, EaseOutCubic);
}