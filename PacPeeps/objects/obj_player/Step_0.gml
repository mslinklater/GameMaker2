event_inherited();

// Use the cursor keys to request a direction to move in

m_requestedDirection = kDirectionNone;

// Player input
if(m_whichPlayer == kPlayer1)
{
	if(keyboard_check(vk_left))		m_requestedDirection = kDirectionLeft;
	if(keyboard_check(vk_right))	m_requestedDirection = kDirectionRight;
	if(keyboard_check(vk_up))		m_requestedDirection = kDirectionUp;
	if(keyboard_check(vk_down))		m_requestedDirection = kDirectionDown;
}
else
{
	if(keyboard_check(ord("A")))		m_requestedDirection = kDirectionLeft;
	if(keyboard_check(ord("D")))		m_requestedDirection = kDirectionRight;
	if(keyboard_check(ord("W")))		m_requestedDirection = kDirectionUp;
	if(keyboard_check(ord("S")))		m_requestedDirection = kDirectionDown;
}

// Animation
m_sprframe+=0.5;
if(m_sprframe == 5) m_sprframe = 0;

if(m_direction == kDirectionNone) m_sprframe = 0;

// check for eating dots
var dot = instance_place(x, y, obj_dot);
if( dot != noone)
{
	instance_destroy(dot);
}

// check for eating energizers
var energizer = instance_place(x, y, obj_energizer);
if( energizer != noone)
{
	instance_destroy(energizer);
}

