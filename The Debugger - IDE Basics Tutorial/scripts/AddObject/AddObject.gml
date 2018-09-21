/// AddObject( _Tile )

// add an object into the map, and add a collision tile for it.
var _tile = argument[0];
var Collision_Map = layer_tilemap_get_id("Collisions");
tilemap_set_at_pixel(Collision_Map, _tile, x,y);

