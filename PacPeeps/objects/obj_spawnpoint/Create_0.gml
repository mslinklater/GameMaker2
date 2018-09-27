
mask_index = -1;
visible = false;

// switch self off

switch(item_to_spawn)
{
	case kPlayer1:
		instance_create_layer(x, y, "Entities", obj_player);
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
