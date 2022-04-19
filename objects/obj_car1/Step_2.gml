/// @description Insert description here
// You can write your code in this editor
if(direction > 45 && direction <= 135 && sprite_index != spr_carup)
{
	sprite_index = spr_carup;
}
else if(direction > 136 && direction <= 225 && sprite_index != spr_carleft)
{
	sprite_index = spr_carleft;
}
else if(direction > 225 && direction <= 315 && sprite_index != spr_cardown)
{
	sprite_index = spr_cardown;
}
else if(direction > 315 && direction <= 360 && sprite_index != spr_carright)
{
	sprite_index = spr_carright;
}
