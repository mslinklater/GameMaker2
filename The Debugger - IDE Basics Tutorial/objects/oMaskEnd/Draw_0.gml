/// END alpha mask drawing. Dest alpha channel is now locked off and acts as a mask

gpu_set_alphatestenable(true);
gpu_set_blendenable(true);
gpu_set_colourwriteenable(true,true,true,false);     // never normally need to write alpha

