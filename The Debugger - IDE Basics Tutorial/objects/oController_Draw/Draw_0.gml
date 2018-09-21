// Draw ALL objects in order

// We don't want filtering on these, as it keeps it more "cartoonie"
var old_filter = gpu_get_texfilter();			// remember the old setting, in case it was off in preferences
gpu_set_texfilter(false);						// disable it

OT_Draw();										// render all objects in the correct dpeth order

gpu_set_texfilter(old_filter);					// restore filtering
