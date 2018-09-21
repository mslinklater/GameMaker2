// You can write your code in this editor
if( snap_shot ){
	gpu_set_alphatestenable(false);					// draw_set_alpha_test(false);
	gpu_set_blendenable(false);						// draw_enable_alphablend(false);

	// need to FILL the alpha channel for saving
	surface_set_target(application_surface);
	gpu_set_colourwriteenable(false,false,false,true);
	draw_set_alpha(1);
	draw_set_colour(c_black);       // won't see this
	draw_rectangle(0,0,room_width,room_height,false);
	gpu_set_colourwriteenable(true,true,true,true);
	surface_reset_target();

	gpu_set_alphatestenable(true);					
	gpu_set_blendenable(true);						


	surface_save(application_surface, "Screen_"+string(scr_count++));
	snap_shot=false;
}