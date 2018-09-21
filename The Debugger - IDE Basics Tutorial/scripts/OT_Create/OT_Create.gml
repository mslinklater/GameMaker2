/// OT_Create( _size )

// Create a global Order Table (OT). This stores a list of instances to draw for each "Y" coordinate in the level
// It also has a little overlap so things can go on/off screen easily if required.
#macro OT_OFFSET 128
global.ot_size = argument0+(OT_OFFSET*2);					// OT_OFFSET above and OT_OFFSET below.... (adjust as required)

// create the list, then create lists inside this list. (so it's like a 2D array)
global.ot = ds_grid_create(1,global.ot_size);

// create suib-lists
for(var i=0;i<global.ot_size;i++){
	global.ot[# 0,i] = ds_list_create();
}
