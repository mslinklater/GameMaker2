/// @description You can write your code in this editor

// Create our lightmap when required
if( !surface_exists(lighting_surf) ){
	// surface should be smaller the size of the actual room
	lighting_surf = surface_create(room_width>>light_scale_shift,room_height>>light_scale_shift);
}


// remember the old filter as lights are always rendered filtered (helps to blur them)
var old_filter = gpu_get_texfilter();
gpu_set_texfilter(true);


// set and clear the lightmap (its a small surface, and the sprites aren't large, so not a big cost)
surface_set_target(lighting_surf);
draw_clear_alpha($5c5c5c,1);

// render lights in an additive way, so when they overlap,  it gets brighter
var old_blend =gpu_get_blendmode();
gpu_set_blendmode(bm_add);

var scaler=0;
var count = ds_list_size(light_list);
for(var i=0;i<count;i++)
{
	
	// get light position and rescale back into "lightmap" scale
	var pos = ds_list_find_value(light_list, i);
	var xx = (((pos&$ffff)*64)+32)>>light_scale_shift;
	var yy = ((((pos>>16)&$ffff)*64)+32)>>light_scale_shift;
	
	// make it "flicker" a little, and remember its size for layer
	var size= (random(1)*0.05)-0.1;
	scaler[i]=size;
	draw_sprite_ext(sLightGlow1stPass,0, xx,yy, 1.6+size,1.6+size,0,$4C7BFF,1);
}
surface_reset_target();


// render the shadows..... we should use a shader so we have better control over how we use the lighting surface
gpu_set_blendmode_ext(bm_dest_colour,bm_zero);
draw_surface_stretched_ext(lighting_surf,0,0, room_width,room_height,c_white,1);
gpu_set_blendmode(bm_normal);



// reset everything back
gpu_set_blendmode(old_blend);
gpu_set_texfilter(old_filter);



