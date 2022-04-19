obj_detective.is_active = true;
var camera_x = camera_get_view_x(view_get_camera(0));
var camera_y = camera_get_view_y(view_get_camera(0));
room_ready = false;

global.dialogue_array[0] = "So Mr. Detective, you said you're here to investigate a possible bomb threat?";
global.dialogue_array[1] = "Heh. It seems as if this city gets crazier and crazier everyday.";
global.dialogue_array[2] = "This city never sleeps! Look around the entire city. You might find a lot of     interesting things.";
global.dialogue_array[3] = "I don't know what this means, but use the arrow keys to move and space to interact. Oh this is your stop.";
global.dialogue_array_size = 4;
var taxi_dialogue = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("layer_dialogue"), obj_dialogue);

