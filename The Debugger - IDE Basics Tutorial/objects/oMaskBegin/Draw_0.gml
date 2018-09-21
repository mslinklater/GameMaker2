/// setup destination alpha drawing - Begin mask drawing

gpu_set_alphatestenable(false);
gpu_set_blendenable(false);

// first CLEAR the alpha channel - H/W clips to current surface (application_surface probably)
gpu_set_colourwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_set_colour(c_black);								// won't see this to to colour channels being disabled
draw_rectangle(0,0,room_width,room_height,false);
gpu_set_colourwriteenable(true,true,true,true);


gpu_set_alphatestenable(true);
draw_set_alpha(1);


