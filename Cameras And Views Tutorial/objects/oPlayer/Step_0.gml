// player movement is done in the script
scrProcessPlayer();

var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);

var _viewX = camera_get_view_x(view_camera[0]);
var _viewY = camera_get_view_y(view_camera[0]);
var _viewW = camera_get_view_width(view_camera[0]);
var _viewH = camera_get_view_height(view_camera[0]);

var _gotoX = x + (_hor * 200) - (_viewW * 0.5);
var _gotoY = y + (_ver * 150) - (_viewH * 0.5);

var _newX = lerp(_viewX, _gotoX, 0.1);
var _newY = lerp(_viewY, _gotoY, 0.1);
camera_set_view_pos(view_camera[0], _newX, _newY);

// zooming
