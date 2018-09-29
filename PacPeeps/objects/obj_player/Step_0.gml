event_inherited();

// Use the cursor keys to request a direction to move in

m_requestedDirection = kDirectionNone;

if(keyboard_check(vk_left))		m_requestedDirection = kDirectionLeft;
if(keyboard_check(vk_right))	m_requestedDirection = kDirectionRight;
if(keyboard_check(vk_up))		m_requestedDirection = kDirectionUp;
if(keyboard_check(vk_down))		m_requestedDirection = kDirectionDown;

