// On creation the junction needs to see which other junctions it can connect to.
// It does this by sending out feelers

m_xpos = x / kMap_tilesize;
m_ypos = y / kMap_tilesize;

m_layerid = layer_get_id("MapMeta");
m_tilemapid = layer_tilemap_get_id(m_layerid);

m_can_move_up = false;
m_can_move_down = false;
m_can_move_left = false;
m_can_move_right = false;

// look for neighboring junctions so we can build some connectivity info

m_feeler_up = scr_find_first_match_tile_in_direction(m_tilemapid, m_xpos, m_ypos, kDirection_up, kMapmeta_tile_junction);
m_feeler_down = scr_find_first_match_tile_in_direction(m_tilemapid, m_xpos, m_ypos, kDirection_down, kMapmeta_tile_junction);
m_feeler_left = scr_find_first_match_tile_in_direction(m_tilemapid, m_xpos, m_ypos, kDirection_left, kMapmeta_tile_junction);
m_feeler_right = scr_find_first_match_tile_in_direction(m_tilemapid, m_xpos, m_ypos, kDirection_right, kMapmeta_tile_junction);

if(m_feeler_up != -1)
	m_can_move_up = true;
if(m_feeler_down != -1)
	m_can_move_down = true;
if(m_feeler_left != -1)
	m_can_move_left = true;
if(m_feeler_right != -1)
	m_can_move_right = true;
