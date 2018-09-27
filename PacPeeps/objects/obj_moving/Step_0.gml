/// @description Update

if(m_direction == kDirectionNone)
{
	if(m_requestedDirection == kDirectionNone)
	{
		// object is stationary and not requesting to move, so return.
		return;
	}
	
	// check if requested direction is in the allowed direction array
	for(i = 0 ; i < array_length_1d(m_allowedDirections) ; i++)
	{
		if(m_requestedDirection == m_allowedDirections[i])
		{
			m_direction = m_requestedDirection;
		}
	}
}

// move things

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

