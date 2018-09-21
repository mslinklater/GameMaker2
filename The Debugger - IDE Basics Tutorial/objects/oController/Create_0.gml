/// Init the map....
OT_Create(room_height);
InitMap();



WallMap = layer_tilemap_get_id("Collisions");
layer_set_visible("Collisions",false);		// just in case I've left them on!
global.WallMap = WallMap;


// Dump collision map out to console for debug
var ww = tilemap_get_width(WallMap);
var hh = tilemap_get_height(WallMap);
for(var yy=0;yy<hh;yy++){
	var s = "";
	for(var xx=0;xx<ww;xx++){
		if( (tilemap_get(WallMap,xx,yy)&$ffff) !=0 ){
			s = s+"#";
		}else{
			s = s+".";
		}
	}
	show_debug_message(s);
}



// Create a DEBUG tile layer
var d = layer_get_depth("Collisions")-10;
DebugLayer = layer_create(d);
DebugMap = layer_tilemap_create(DebugLayer,0,0,tCollisions,64,64);
layer_set_visible(DebugLayer,true);

global.DebugLayer = DebugLayer;
global.DebugMap = DebugMap;

scr_count=0;
snap_shot=false;
//surface_resize(application_surface, 480,360);
