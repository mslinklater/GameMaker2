/// @description Initialise some class members

m_direction = kDirectionNone;
m_speed = 0;
m_requestedDirection = kDirectionNone;
m_allowedDirections[0] = kDirectionNone;
m_numAllowedDirections = 0;
m_quantizedX = 0;
m_quantizedY = 0;
m_halfSize = sprite_width / 2;
m_atJunction = true;
m_canTurnImmediately = false;
