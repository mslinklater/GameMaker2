/// @description

event_inherited();

// find the routing
m_validPath = mp_grid_path(global.mpGrid, m_myPath, x, y, m_seekX, m_seekY, false);

if(m_atJunction)
{
	if(m_validPath)
	{
		m_needToChooseRandom = true;
		
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
	}
	else
	{
		// not a valid path, so pick a random valid direction
		if((m_numAllowedDirections > 0) && m_needToPickRandomRoute)
		{
			var validRequest = true;
			do
			{
				validRequest = true;
				m_requestedDirection = m_allowedDirections[irandom_range(0,m_numAllowedDirections-1)];	
				
				if(m_direction == kDirectionUp) && (m_requestedDirection == kDirectionDown) validRequest = false;
				if(m_direction == kDirectionDown) && (m_requestedDirection == kDirectionUp) validRequest = false;
				if(m_direction == kDirectionLeft) && (m_requestedDirection == kDirectionRight) validRequest = false;
				if(m_direction == kDirectionRight) && (m_requestedDirection == kDirectionLeft) validRequest = false;
			} until(validRequest);
			m_needToPickRandomRoute = false;
		}
	}
}
else
{
	m_needToPickRandomRoute = true;
}