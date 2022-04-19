/// @description Insert description here
// You can write your code in this editor
obj_detective.is_active = true;
var camera_x = camera_get_view_x(view_get_camera(0));
var camera_y = camera_get_view_y(view_get_camera(0));
obj_detective.holding_cod = true;
global.dialogue_array[0] = "WHY I OUGHTA";
global.dialogue_array_size = 1;
var peng_hit_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);
instance_destroy(obj_water_gun_bullet);