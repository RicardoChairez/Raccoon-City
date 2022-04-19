/// @description Create the dialog


dialog_t = 0;
dialog_delta = 1;
at_end = false;
at_end_destroy = false;

var dialog_text = global.dialogue_array[global.dialogue_array_index];

dialog = dialog_create(sprite_width,
						sprite_height,
						16, 16, 4,
						dialog_text);
