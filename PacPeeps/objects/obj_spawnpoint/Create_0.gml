
mask_index = -1;
visible = false;

// switch self off

switch(item_to_spawn)
{
	case kPlayer1:
		var player = instance_create_layer(x, y, "Entities", obj_player);
		player.m_whichPlayer = kPlayer1;
		break;
	case kPlayer2:
		var player = instance_create_layer(x, y, "Entities", obj_player);
		player.m_whichPlayer = kPlayer2;
		break;
		
		/*
	case kGhostInky:
		instance_create_layer(x, y, "Entities", obj_ghost_inky);
		break;
	case kPlayer1:
		instance_create_layer(x, y, "Entities", obj_player);
		break;
	case kPlayer1:
		instance_create_layer(x, y, "Entities", obj_player);
		break;
	case kPlayer1:
		instance_create_layer(x, y, "Entities", obj_player);
		break;
		*/
	default:
	// do nothing
		break;
}
