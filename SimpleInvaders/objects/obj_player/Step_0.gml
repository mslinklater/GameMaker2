/// @description

// moving

if(global.playerAlive)
{
	image_index = 0;
	
	if(keyboard_check(vk_left))
	{
		x -= kPlayerSpeed;
	}

	if(keyboard_check(vk_right))
	{
		x += kPlayerSpeed;
	}

	// clamp position

	x = clamp(x, kPlayerXBorder, room_width - kPlayerXBorder);

	// firing

	if(keyboard_check_pressed(vk_space) && (global.bulletActive = false))
	{
		var bullet = instance_create_layer(x, y-10, "Instances", obj_bullet);
		bullet.direction = 90;
		bullet.speed = kBulletSpeed;
	}
}
else
{	// !playerAlive	
	image_index = irandom_range(1, 2);
}
