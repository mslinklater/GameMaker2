/// @description Insert description here
// You can write your code in this editor

if(global.dbg_drawPaths)
{	
	switch(m_requestedDirection)
	{
		case kDirectionUp:
		draw_sprite_ext(sArrow, 0, x, y-kMapTileSize, 1, 1, 0, 0xffffff, 1);
		break;
		case kDirectionLeft:
		draw_sprite_ext(sArrow, 0, x-kMapTileSize, y, 1, 1, 90, 0xffffff, 1);
		break;
		case kDirectionDown:
		draw_sprite_ext(sArrow, 0, x, y+kMapTileSize, 1, 1, 180, 0xffffff, 1);
		break;
		case kDirectionRight:
		draw_sprite_ext(sArrow, 0, x+kMapTileSize, y, 1, 1, 270, 0xffffff, 1);
		break;
	}
	
}