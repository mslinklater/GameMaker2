/// @description Update

if(m_direction == kDirectionNone)
{
	if(m_requestedDirection == kDirectionNone)
	{
		// object is stationary and not requesting to move, so return.
		return;
	}
}

// Wrap around

if (x < -kMapTileSize) x = room_width;
if (x > room_width) x = -kMapTileSize;

// Process the junction objects

var junctionInstance = instance_place(x, y, obj_junction);

if (m_direction) == kDirectionLeft && (m_requestedDirection == kDirectionRight)
	m_direction = m_requestedDirection;
if (m_direction) == kDirectionRight && (m_requestedDirection == kDirectionLeft)
	m_direction = m_requestedDirection;
if (m_direction) == kDirectionUp && (m_requestedDirection == kDirectionDown)
	m_direction = m_requestedDirection;
if (m_direction) == kDirectionDown && (m_requestedDirection == kDirectionUp)
	m_direction = m_requestedDirection;

if(junctionInstance != noone)
{	
	m_atJunction = true;
	
	var absX = abs((x-kHalfMapTileSize) - junctionInstance.x);
	var absY = abs((y-kHalfMapTileSize) - junctionInstance.y);
	
	m_allowedDirections[0] = kDirectionNone;
	m_allowedDirections[1] = kDirectionNone;
	m_allowedDirections[2] = kDirectionNone;
	m_allowedDirections[3] = kDirectionNone;
		
	if(absX < m_speed) && (absY < m_speed)
	{
		with(junctionInstance)
		{
			other.m_numAllowedDirections = 0;
			if(m_can_move_up) other.m_allowedDirections[other.m_numAllowedDirections++] = kDirectionUp;
			if(m_can_move_down) other.m_allowedDirections[other.m_numAllowedDirections++] = kDirectionDown;
			if(m_can_move_left) other.m_allowedDirections[other.m_numAllowedDirections++] = kDirectionLeft;
			if(m_can_move_right) other.m_allowedDirections[other.m_numAllowedDirections++] = kDirectionRight;
			
			// stopping at walls
			
			if(!m_can_move_up) && (other.m_direction == kDirectionUp)
				other.m_direction = kDirectionNone;
			if(!m_can_move_left) && (other.m_direction == kDirectionLeft)
				other.m_direction = kDirectionNone;
			if(!m_can_move_down) && (other.m_direction == kDirectionDown)
				other.m_direction = kDirectionNone;
			if(!m_can_move_right) && (other.m_direction == kDirectionRight)
				other.m_direction = kDirectionNone;
		}
	}

// snap to grid
	switch(m_direction)
	{
		case kDirectionUp:
		case kDirectionDown:
			x = junctionInstance.x + kHalfMapTileSize;
			break;
		case kDirectionLeft:
		case kDirectionRight:
			y = junctionInstance.y + kHalfMapTileSize;
			break;
	}
}
else
{
	// not at a junction
	m_atJunction = false;
}

// check if requested direction is in the allowed direction array

if m_requestedDirection != kDirectionNone
{
	for(i = 0 ; i < array_length_1d(m_allowedDirections) ; i++)
	{
		if(m_requestedDirection == m_allowedDirections[i])
		{
			m_direction = m_requestedDirection;
		}
	}
}

// move

switch(m_direction)
{
	case kDirectionUp:
		y -= m_speed;
		break;
	case kDirectionDown:
		y += m_speed;
		break;
	case kDirectionLeft:
		x -= m_speed;
		break;
	case kDirectionRight:
		x += m_speed;
		break;
}

