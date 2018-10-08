/// @description Insert description here
// You can write your code in this editor

if(global.dbg_drawMapMeta)
{
	draw_set_alpha(0.5);

	draw_sprite(spr_junction, 0, x, y);

	var centX = x + kHalfMapTileSize;
	var centY = y + kHalfMapTileSize;

	if(m_can_move_up)	draw_sprite_ext(sArrow, 0, centX, centY - kMapTileSize, 1, 1, 0, $ffffff, 0.2);
	if(m_can_move_right) draw_sprite_ext(sArrow, 0, centX+kMapTileSize, centY, 1, 1, -90, $ffffff, 0.2);
	if(m_can_move_down) draw_sprite_ext(sArrow, 0, centX, centY+kMapTileSize, 1, 1, 180, $ffffff, 0.2);
	if(m_can_move_left) draw_sprite_ext(sArrow, 0, centX-kMapTileSize, centY, 1, 1, 90, $ffffff, 0.2);
}


//if(m_can_move_down) draw_sprite(spr_junction_down, 0, x, y+16);
//if(m_can_move_left) draw_sprite(spr_junction_left, 0, x-16, y);
//if(m_can_move_right) draw_sprite(spr_junction_right, 0, x+16, y);
