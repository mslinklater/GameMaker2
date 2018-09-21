/// OT_Draw()

// render everything in the Order Table (could clip to viewport here)
for(var index=0;index<global.ot_size;index++)
{
	// get the list of instances for this "Y" index
	var l = global.ot[# 0,index];
	
	// IF there is anything in the list, draw it
	var count = ds_list_size(l)-1;
	if( count>=0 )
	{
		while(count>=0)
		{
			// Get the instance in the list
			var i = ds_list_find_value(l,count--);
			draw_sprite( i.sprite_index, i.image_index,i.x,i.y);
		}
		// This list had something in it... so clear it!		(don't clear as we still need it for silhouettes)
		//ds_list_clear(l);
	}
}
