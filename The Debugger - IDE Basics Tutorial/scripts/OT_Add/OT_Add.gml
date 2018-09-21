/// OT_Add( _inst )

// Add an instance to the Order Table (OT)
var yy = round(argument0.y)+OT_OFFSET;
if( yy<0 || yy>=global.ot_size ) return false;				// out of bounds (clipped) so don't add

var list = global.ot[# 0,yy ];								// get the list we're to add ourselves into
ds_list_add(list, argument0 );								// add in....
return true;

