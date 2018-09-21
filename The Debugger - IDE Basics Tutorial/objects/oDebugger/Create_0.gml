/// @description 

// copy sprite to surface
var width = room_width / 64;
var height = room_height / 64;
buff = buffer_create(width * height, buffer_fixed, 1);

var _l = layer_get_id("Ground")
var _t = layer_tilemap_get_id(_l);


for (var i = 0; i < width; i++;)
{
for (var j = 0; j < height; j++;)
	{
	var _a = tilemap_get(_t, i, j);
	buffer_write(buff, buffer_u8, _a);
	}
}

rm_x = room_width / 2;
rm_y = room_height / 2;
draw = false;


