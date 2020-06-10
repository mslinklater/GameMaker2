/// @description Camera Setup

global.cameraX = 0;
global.cameraY = 0;
target = obj_ship;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

if(instance_exists(target))
{
	global.cameraX = target.x - global.cameraWidth / 2;
	global.cameraY = target.y - global.cameraHeight / 2;
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

// Display
displayScale = 2;
displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

display_set_gui_size(global.cameraWidth, global.cameraHeight);

alarm[0] = 1;