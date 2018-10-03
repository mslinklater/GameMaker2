
mask_index = -1;
visible = false;

// switch self off

var spawnX = x+kHalfMapTileSize;
var spawnY = y+kHalfMapTileSize;

switch(item_to_spawn)
{
	case kPlayer1:
		var player = instance_create_layer(spawnX, spawnY, "Entities", obj_player);
		player.m_whichPlayer = kPlayer1;
		break;
	case kPlayer2:
		var player = instance_create_layer(spawnX, spawnY, "Entities", obj_player);
		player.m_whichPlayer = kPlayer2;
		break;
	case kGhostInky:
		var ghost = instance_create_layer(spawnX, spawnY, "Entities", obj_ghost);
		ghost.whichGhost = kGhostInky;
		break;
	case kGhostPinky:
		var ghost = instance_create_layer(spawnX, spawnY, "Entities", obj_ghost);
		ghost.whichGhost = kGhostPinky;
		break;
	case kGhostBlinky:
		var ghost = instance_create_layer(spawnX, spawnY, "Entities", obj_ghost);
		ghost.whichGhost = kGhostBlinky;
		break;
	case kGhostClyde:
		var ghost = instance_create_layer(spawnX, spawnY, "Entities", obj_ghost);
		ghost.whichGhost = kGhostClyde;
		break;
		
	default:
	// do nothing
		break;
}
