/// @description Insert description here
// You can write your code in this editor

//draw_sprite(spr_player, m_sprframe, x, y);

var colour = c_yellow;
if(m_whichPlayer == kPlayer2) colour = c_aqua;

switch(m_direction)
{
	case kDirectionNone:
	case kDirectionRight:
		draw_sprite_ext(spr_player, m_sprframe, x, y, 1, 1, 0, colour, 1);
		break;
	case kDirectionUp:
		draw_sprite_ext(spr_player, m_sprframe, x, y+16, 1, 1, 90, colour, 1);
		break;
	case kDirectionLeft:
		draw_sprite_ext(spr_player, m_sprframe, x+16, y+16, 1, 1, 180, colour, 1);
		break;
	case kDirectionDown:
		draw_sprite_ext(spr_player, m_sprframe, x+16, y, 1, 1, 270, colour, 1);
		break;
}

// debug
