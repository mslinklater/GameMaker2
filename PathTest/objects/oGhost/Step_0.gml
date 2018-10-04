/// @description

if( mp_grid_path(global.navGrid, m_myPath, x, y, mouse_x, mouse_y, false))
{
//	path_start(m_myPath, 10, path_action_stop, false);

	var newX = path_get_x(m_myPath, 2 / path_get_length(m_myPath));
	var newY = path_get_y(m_myPath, 2 / path_get_length(m_myPath));
	
	if(newX < x) x=x-3;
	else if(newX > x) x=x+3;
	if(newY < y) y=y-3;
	else if(newY > y) y=y+3;
}