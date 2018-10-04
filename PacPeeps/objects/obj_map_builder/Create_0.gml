// Builds runtime data structures for the map

// create the mpgrid

global.mpGrid = mp_grid_create(0, 0, room_width/kMapTileSize, room_height/kMapTileSize, kMapTileSize, kMapTileSize);

// Switch off the mapmeta tile layer
layer_set_visible("MapMeta", 0);

// setup some useful mapmeta tilemap values
m_mapmeta_layerid = layer_get_id("MapMeta");
m_mapmeta_tilemapid = layer_tilemap_get_id(m_mapmeta_layerid);
m_mapmeta_width = tilemap_get_width(m_mapmeta_tilemapid);
m_mapmeta_height = tilemap_get_height(m_mapmeta_tilemapid);

// now iterate over the map 
for(col = 0 ; col < m_mapmeta_width ; col++)
{
	for(row = 0 ; row < m_mapmeta_height ; row++)
	{
		tile_value = tilemap_get(m_mapmeta_tilemapid, col, row)
		
		if(tile_value == kMapmetaTileJunction)
		{
			instance_create_layer(col * kMapTileSize, row * kMapTileSize, "Map", obj_junction);
		}
		if(tile_value == kMapmetaTileWall)
		{
			mp_grid_add_cell(global.mpGrid, col, row);
		}
	}
}

// spawn dots and energizers

m_mapdots_layerid = layer_get_id("MapDots");
m_mapdots_tilemapid = layer_tilemap_get_id(m_mapdots_layerid);
m_mapdots_width = tilemap_get_width(m_mapdots_tilemapid);
m_mapdots_height = tilemap_get_height(m_mapdots_tilemapid);

for(col = 0 ; col < m_mapdots_width ; col++)
{
	for(row = 0 ; row < m_mapdots_height ; row++)
	{
		tile_value = tilemap_get(m_mapdots_tilemapid, col, row);
		
		if(tile_value == kMapTilesDot)
		{
			instance_create_layer(col * kMapTileSize, row * kMapTileSize, "Map", obj_dot);
		}
		if(tile_value == kMapTilesEnergizer)
		{
			instance_create_layer(col * kMapTileSize, row * kMapTileSize, "Map", obj_energizer);
		}
	}
}

