/// Init
tilesize = 64;															// size of tiles
map = layer_tilemap_get_id("Collisions");								// this will be the layer we use for collisions
hills = layer_get_all_elements("Hills");								// all the hill sprites
stars = layer_get_all_elements("Stars");								// all the star sprites
clouds = layer_get_all_elements("Clouds");								// all the cloud sprites

// Initilize viewports

view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;

// Create camera

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, noone, -1, -1, -1, -1);

// Setup the Window

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) -270;

window_set_rectangle(_xpos, _ypos, 960, 540);

// Application surface

surface_resize(application_surface, 960, 540);
