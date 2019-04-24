/// @description

// movement

if keyboard_check(vk_left)
	x -= kPlayerSpeed;
	
if keyboard_check(vk_right)
	x += kPlayerSpeed;

x = clamp(x, kPlayerXLimit, room_width - kPlayerXLimit);

// Firing

if keyboard_check_pressed(vk_space)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
}