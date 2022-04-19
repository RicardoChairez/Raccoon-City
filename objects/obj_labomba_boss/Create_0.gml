/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
timer = 9;
id.fsm = m_create("bored");

m_rule(fsm, "comply", "bored", "happy");
m_rule(fsm, "comply", "grumpy", "bored");
m_rule(fsm, "threat", "happy", "bored");
m_rule(fsm, "threat", "bored", "grumpy");
camera_x = camera_get_view_x(view_get_camera(0));
camera_y = camera_get_view_y(view_get_camera(0));
obj_detective.is_active = true;
global.dialogue_array[0] = "GET ONE STEP CLOSER AND ILL BLOW THIS CITY TO PIECES   (use the mouse to interact with LABOMBA)";
	global.dialogue_array_size = 1;
	var labomba_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("Instances"), obj_dialogue);
m_action(fsm, ">happy", function() {
	obj_detective.is_active = true;
	sprite_index = spr_labomba_happy;
	if(timer != 2)
	{
		global.dialogue_array[0] = "My Demands? I want a pony, a baseball bat, a gameboy, a puppy, and ALL THE CITIES MONEY, AND AN ESCAPE HELECOPTER";
		global.dialogue_array_size = 1;
		var labomba_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("Instances"), obj_dialogue);	
	}
	
});
m_action(fsm, ">bored", function() {
	obj_detective.is_active = true;
	sprite_index = spr_labomba_boss;
	if(timer != 2)
	{
	global.dialogue_array[0] = "Shut up, you're bluffing";
	global.dialogue_array_size = 1;
	var labomba_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("Instances"), obj_dialogue);}
});
m_action(fsm, ">grumpy", function() {
	obj_detective.is_active = true;
	sprite_index = spr_labomba_mad;
	if(timer != 2)
	{
	global.dialogue_array[0] =  "You're really lame, you know I'm serious right?";
	global.dialogue_array_size = 1;
	var labomba_dialog = instance_create_layer(camera_x + 16, camera_y + 176, layer_get_id("Instances"), obj_dialogue);}
});



