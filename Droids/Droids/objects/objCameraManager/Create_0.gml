/// @description

global.cameraX = 0;
global.cameraY = 0;

var vpArray = room_get_viewport(rm_game, 0);
global.cameraWidth = vpArray[kRoomGetViewport_w];
global.cameraHeight = vpArray[kRoomGetViewport_h];

