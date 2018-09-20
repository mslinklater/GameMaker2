/// Move the clouds
for(i=0;i<array_length_1d(clouds);i++){																			// loop through the clouds
	layer_sprite_x(clouds[i], layer_sprite_get_x(clouds[i])+1);								// move them to the right
	if(layer_sprite_get_x(clouds[i]) > room_width){											// if they are off the end of the screen
		layer_sprite_x(clouds[i],-sprite_get_width(layer_sprite_get_sprite(clouds[i])));	// move them to the start of the screen
	}
}