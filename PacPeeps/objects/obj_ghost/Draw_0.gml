/// @description Draw used for all 4 ghosts

switch(whichGhost)
{
	case kGhostInky:
		draw_sprite_ext(spr_ghost, 0, x, y, 1, 1, 0, make_color_rgb(255, 0, 0), 1);
	break;
	case kGhostPinky:
		draw_sprite_ext(spr_ghost, 0, x, y, 1, 1, 0, make_color_rgb(255,184,255), 1);
	break;
	case kGhostBlinky:
		draw_sprite_ext(spr_ghost, 0, x, y, 1, 1, 0, make_color_rgb(0, 255, 255), 1);
	break;
	case kGhostClyde:
		draw_sprite_ext(spr_ghost, 0, x, y, 1, 1, 0, make_color_rgb(255, 184, 82), 1);
	break;
}

