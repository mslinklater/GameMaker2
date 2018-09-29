/// @description Insert description here

// Debug overlay

if(keyboard_check_pressed(vk_f10))
{
	m_showDebugOverlay = !m_showDebugOverlay;
}

show_debug_overlay(m_showDebugOverlay);
