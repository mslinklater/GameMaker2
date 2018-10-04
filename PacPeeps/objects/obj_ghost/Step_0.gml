/// @description

event_inherited();

// find the routing
mp_grid_path(global.mpGrid, m_myPath, x, y, m_seekX, m_seekY, false);

// find out which direction we need to request by looking at the first two
// points on the path
var deltaX = path_get_point_x(m_myPath, 1) - path_get_point_x(m_myPath, 0);
var deltaY = path_get_point_y(m_myPath, 1) - path_get_point_y(m_myPath, 0);

if(abs(deltaX) > abs(deltaY))
{
	if(deltaX < 0)
		m_requestedDirection = kDirectionLeft;
	else
		m_requestedDirection = kDirectionRight;
}
else
{
	if(deltaY < 0)
		m_requestedDirection = kDirectionUp;
	else
		m_requestedDirection = kDirectionDown;
}


