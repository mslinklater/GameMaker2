/// @description This object controls a very simple lighting effect, just add into a layer at the end


// All lights are currently on walls, so find the wall tlater
WallMap = layer_tilemap_get_id("Walls");
map_width = tilemap_get_width(WallMap);
map_height= tilemap_get_height(WallMap);

// scale shift changes the size of the lightmap, each shift is a /2
light_scale_shift = 3;
lighting_surf=-1;
light_list = ds_list_create();				// list of lights in the room


// find all lights in the level by looking for all "flame" tile numbers
for(var yy=0;yy<map_height;yy++){
	for(var xx=0;xx<map_width;xx++){
		var tile = tilemap_get(WallMap, xx,yy)&tile_index_mask;
		
		// is this a torch wall tile?
		if( tile>=139 && tile <=154){
			var pos = xx | yy<<16;				// remember tile location (in a single Uint32)
			ds_list_add( light_list, pos );		// add it to our list
		}
	}
}

