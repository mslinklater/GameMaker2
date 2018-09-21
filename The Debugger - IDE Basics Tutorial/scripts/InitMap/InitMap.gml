// Init Map()
#macro	TILE_SOLID			1
#macro	TILE_WATER			2
#macro	TILE_CHEST			3
#macro	TILE_CHEST_EMPTY	4
#macro	TILE_BLOCKER		5


var Inst_Layer = layer_get_id("Instances");

var Collision_Map = layer_tilemap_get_id("Collisions");
var width = tilemap_get_width(Collision_Map);
var height = tilemap_get_height(Collision_Map);

// Hide collisions, show other things we sometimes forget to switch on!
layer_set_visible("Collisions",false);
layer_set_visible("Roofs",true);
layer_set_visible("Shadows1",true);
layer_set_visible("Ground",true);


