// Builds runtime data structures for the map

// Switch off the mapmeta tile layer
layer_set_visible("MapMeta", 0);

// setup some useful mapmeta tilemap values
m_mapmeta_layerid = layer_get_id("MapMeta");
m_mapmeta_tilemapid = layer_tilemap_get_id(m_mapmeta_layerid);
m_mapmeta_width = tilemap_get_width(m_mapmeta_tilemapid);
m_mapmeta_height = tilemap_get_height(m_mapmeta_tilemapid);

//show_message("Tileset width " + string(m_mapmeta_width) + " height " + string(m_mapmeta_height));

// now iterate over the map 
for(col = 0 ; col < m_mapmeta_width ; col++)
{
	for(row = 0 ; row < m_mapmeta_height ; row++)
	{
		tile_value = tilemap_get(m_mapmeta_tilemapid, col, row)
		
		if(tile_value == kMapmeta_tile_junction)
		{
			instance_create_layer(col * kMap_tilesize, row * kMap_tilesize, "Map", obj_junction);
		}
	}
}
