if(timer == 2)
{
	audio_play_sound(snd_cop, 0, true);
	global.dialogue_array[0] = "Oh crud, the coppers are abouta show up!";
	global.dialogue_array_size = 1;
	var labomba_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("Instances"), obj_dialogue);	
	timer--;
}


if(timer == 0)
{
	audio_stop_sound(snd_cop);
	if(sprite_index == spr_labomba_mad)
	{
		room_goto(rm_lose);
	}
	else if( sprite_index == spr_labomba_boss)
	{
		room_goto(rm_win);
	}
	else if( sprite_index == spr_labomba_happy)
	{
		room_goto(rm_neutral);
	}
}
