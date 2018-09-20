for(i=0;i<health;i++){												// loop through the number of hearts we have
	draw_sprite(sHeart,0,50+(sprite_get_width(sHeart)*i),50);		// draw if we have them
}
draw_set_font(fTahoma24);											// set the font to draw text with
draw_set_valign(fa_middle);											// use the middle to position vertically
draw_set_halign(fa_right);											// use the right to position horizontally
draw_set_colour(c_black);											// set the colour to draw text
draw_sprite(sPickupStar,0,view_wport[0]-50,50);						// draw the star sprite
draw_text(view_wport[0]-20-sprite_get_width(sPickupStar),57,score);	// draw the number of stars collected