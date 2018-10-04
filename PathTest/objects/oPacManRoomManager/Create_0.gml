/// @description 

global.navGrid = mp_grid_create(0, 0, room_width/16, room_height/16, 16, 16);

var layerId = layer_get_id("Tiles_1");
var tilemapId = layer_tilemap_get_id(layerId);

for(var col=0; col<tilemap_get_width(tilemapId); col++)
{
	for(var row=0; row<tilemap_get_height(tilemapId); row++)
	{
		if(tilemap_get(tilemapId, col, row) != 0)
		{
			mp_grid_add_cell(global.navGrid, col, row);
		}
	}
}