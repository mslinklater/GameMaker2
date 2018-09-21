/// OT_Draw_Silhouette()

// This draws the "hidden" bits behind the walls. It's basically the same as the OT_Draw, but has some blend mode changes it also clears the list when done.
gpu_set_colourwriteenable(true,true,true,false);			// don't moidify the dest alpha channel (we use this as the mask)
gpu_set_blendenable(true);									// draw_enable_alphablend(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(64);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);		// draw_set_blend_mode_ext(bm_dest_alpha,bm_inv_dest_alpha);


// render everything in the OT
for(var index=0;index<global.ot_size;index++)
{
    // get the list for this index
    var l = global.ot[# 0,index];
    
	// get the list of instances for this "Y" index
    var count = ds_list_size(l)-1;
    if( count>=0 ){
		while(count>=0)
		{
            // Get the instance in the list
            var i = ds_list_find_value(l,count--);    
            
            // Draw the silhouette
			if( i.silhouette_colour!=$000001 ){
				// a simple shader would be better/faster than setting the fog for each sprite drawn.
				gpu_set_fog(true,i.silhouette_colour,1.0,1.0);
				draw_sprite_ext( i.sprite_index, i.image_index, i.x,i.y, 1,1,0,i.silhouette_colour,1);
			}
            
        }
        // This list had something in it... so clear it!
        ds_list_clear(l);
    }
}
gpu_set_fog(false,$ffffff,1.0,1.0);
gpu_set_alphatestenable(false);

// reset the blend back to normal, and reenable alpha writes.
gpu_set_blendmode(bm_normal);
gpu_set_colourwriteenable(true,true,true,true);

