/// @description

if(mouse_check_button_pressed(mb_left))
{
	targetX = floor(mouse_x / kGridSize) * kGridSize + kGridSize / 2;
	targetY = floor(mouse_y / kGridSize) * kGridSize + kGridSize / 2;
}

if(targetX != undefined && targetY != undefined)
{
	// have a specific target
	
	if(myPath == undefined)
	{
		myPath = path_add()
	}
	
	repathCountdown--;
	if(repathCountdown <= 0)
	{
		mp_grid_path(global.navGrid, myPath, x, y, targetX, targetY, true);
		path_start(myPath, 3, path_action_stop, false);
		repathCountdown = 5;
	}
}