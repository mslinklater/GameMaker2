// Move player

move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left = keyboard_check(vk_left);
move_right = keyboard_check(vk_right);

x_vel = 0;
y_vel = 0;

if move_up y_vel -= my_speed;
if move_down y_vel += my_speed;
if move_left x_vel -= my_speed;
if move_right x_vel += my_speed;

if(!place_meeting(x+x_vel, y, obj_wall_base))
{
	x += x_vel;
}

if(!place_meeting(x, y+y_vel, obj_wall_base))
{
	y += y_vel;
}