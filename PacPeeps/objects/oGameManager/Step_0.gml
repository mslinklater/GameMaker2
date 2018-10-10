/// @description Manage core game loop

var currentRoomName = room_get_name(room);

switch(m_gamePhase)
{
	case kGamePhaseBoot:
	break;
	case kGamePhaseFrontEnd:
		if(currentRoomName != "rmFrontEnd")
		{
			gm_beginFrontEnd();
		}
	break;
	case kGamePhaseInGame:
		if(currentRoomName != "rmMap1")
		{
			gm_beginGame();
		}
		if(keyboard_check(vk_escape))
		{
			game_restart();
		}
	break;
}