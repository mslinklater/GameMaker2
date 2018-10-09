/// @description Manage core game loop

switch(m_gamePhase)
{
	case kGamePhaseBoot:
	break;
	case kGamePhaseFrontEnd:
		if(room_get_name(room) != "rmFrontEnd")
		{
			gm_beginFrontEnd();
		}
	break;
	case kGamePhaseInGame:
	break;
}