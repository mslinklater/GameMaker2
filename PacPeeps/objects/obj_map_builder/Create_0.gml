// Builds runtime data structures for the map

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
	}
}
