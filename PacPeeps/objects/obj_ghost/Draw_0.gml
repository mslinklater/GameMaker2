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

// Debug draw

//if(globals.dbg_showPaths)
draw_set_alpha(1);
if(m_validPath)
	draw_set_color(c_green);
else
	draw_set_color(c_red);
	
for( var i=0; i<path_get_number(m_myPath)-1; i++)
{
	var p1x = path_get_point_x(m_myPath, i);
	var p1y = path_get_point_y(m_myPath, i);
	var p2x = path_get_point_x(m_myPath, i+1);
	var p2y = path_get_point_y(m_myPath, i+1);
	
	draw_line(p1x, p1y, p2x, p2y);
}
