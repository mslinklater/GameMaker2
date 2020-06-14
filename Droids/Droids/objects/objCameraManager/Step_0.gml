/// @description

// simple move viewport with cursor keys

if(keyboard_check(vk_left))
{
	global.cameraX -= global.cameraWidth / 50;
}

if(keyboard_check(vk_right))
{
	global.cameraX += global.cameraWidth / 50;
}

if(keyboard_check(vk_up))
{
	global.cameraY -= global.cameraHeight / 50;
}

if(keyboard_check(vk_down))
{
	global.cameraY += global.cameraHeight / 50;
}

// clamp camera values

global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

// set viewport
var cam = view_camera[kMainCamera];
camera_set_view_pos(cam, global.cameraX, global.cameraY);
camera_set_view_size(cam, global.cameraWidth, global.cameraHeight);
