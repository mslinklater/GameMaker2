/// @description

event_inherited();

m_myPath = path_add();

m_allowedDirections[0] = kDirectionLeft;
m_allowedDirections[1] = kDirectionRight;

m_speed = 1;
m_seekX = 0;
m_seekY = 0;
m_validPath = false;
m_needToPickRandomRoute = false;

m_animationDelay = 0;
m_spriteFrame = 0;