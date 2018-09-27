/// @Description Finds a tile on a tilemap
/// @param tilemapid The id of the tilemap object to use
/// @param x Starting x position
/// @param y Starting y position
/// @param direction The direction
/// @param tile_match_id The id of the tile to match against

s_tilemap_id = argument0;
s_x = argument1;
s_y = argument2;
s_direction = argument3;
s_tile_match_id = argument4;
s_tilemap_width = tilemap_get_width(s_tilemap_id);
s_tilemap_height = tilemap_get_height(s_tilemap_id);

s_delta_x = 0;
s_delta_y = 0;

switch(s_direction)
{
	case kDirectionUp:
		s_delta_y = -1;
		break;
	case kDirectionDown:
		s_delta_y = 1;
		break;
	case kDirectionLeft:
		s_delta_x = -1;
		break;
	case kDirectionRight:
		s_delta_x = 1;
		break;
}

// Move one step so we're not on the starting tile location
s_probe = 0;
do
{
	s_x += s_delta_x;
	s_y += s_delta_y;

	if(s_x < 0) s_x = s_tilemap_width - 1;
	if(s_x >= s_tilemap_width) s_x = 0;
	if(s_y < 0) s_y = s_tilemap_height - 1;
	if(s_y >= s_tilemap_height) s_y = 0;

	s_probe = tilemap_get(s_tilemap_id, s_x, s_y);
} until (s_probe != 0);

if(s_probe == s_tile_match_id)
{
	if(s_direction == kDirectionUp) || (s_direction == kDirectionDown)
		return s_y;
	else
		return s_x;
}

return -1;