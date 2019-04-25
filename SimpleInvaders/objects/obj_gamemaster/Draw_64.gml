/// @description

switch(currentPhase)
{
	case kPhaseBuild:
		draw_text(0, 600, "build");
		break;
	case kPhaseGame:
		draw_text(0, 600, "game");
		break;
}

draw_text(0, 620, "baddies: " + string(ds_list_size(baddieList)));
