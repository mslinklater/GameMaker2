/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_junction, 0, x, y);

if(m_feeler_up)	draw_sprite(spr_junction_up, 0, x, y-16);
if(m_feeler_down) draw_sprite(spr_junction_down, 0, x, y+16);
if(m_feeler_left) draw_sprite(spr_junction_left, 0, x-16, y);
if(m_feeler_right) draw_sprite(spr_junction_right, 0, x+16, y);
