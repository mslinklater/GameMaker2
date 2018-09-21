/// @description 
var _x = mouse_x;
var _y = mouse_y;

repeat(200)
	{
	if point_in_circle(rm_x, rm_y, _x, _y, rm_y)
		{
		draw = true;
		}
	else draw = false;
	}
	
repeat(200)
	{
	if point_distance(rm_x, rm_y, _x, _y) < rm_y
		{
		draw = true;
		}
	else draw = false;
	}
