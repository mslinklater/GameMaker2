/// @description

if(!point_in_rectangle(x, y, 
	global.cameraX, 
	global.cameraY, 
	global.cameraX + global.cameraWidth,
	global.cameraY + global.cameraHeight))
{
	instance_destroy();
}
