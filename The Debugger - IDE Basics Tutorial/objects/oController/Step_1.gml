/// Reset the order table...
OT_Reset();

// Clear debug tilemap
for(var yy=0;yy<32;yy++){
	for(var xx=0;xx<32;xx++){
		tilemap_set(DebugMap, 0, xx,yy);
	}
}
