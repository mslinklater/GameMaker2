/// OT_Reset()

// reset the Order table (wipe). The order table wipes itself after
// every frame, but this is just a handy function to have
for(var i=global.ot_size-1;i>=0;i--){
	var l = global.ot[# 0,i];
	ds_list_clear(l);
}
