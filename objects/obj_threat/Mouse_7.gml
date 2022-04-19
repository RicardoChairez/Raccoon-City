/// @description Insert description here
// You can write your code in this editor
if(!obj_detective.is_active){
	obj_labomba_boss.timer--;
	audio_play_sound(snd_fizz, 0 , false);
	if(obj_fuse.sprite_index == spr_fuse_4)
	{
		room_goto(rm_lose);
	}
	else if(obj_fuse.sprite_index == spr_fuse_3)
	{
		obj_fuse.sprite_index = spr_fuse_4;
	}
	else if(obj_fuse.sprite_index == spr_fuse_2)
	{
		obj_fuse.sprite_index = spr_fuse_3;
	}
	else if(obj_fuse.sprite_index == spr_fuse_1)
	{
		obj_fuse.sprite_index = spr_fuse_2;
	}
	
	with (inst_bomb) {
		m_send(fsm, "threat");
	}
}
