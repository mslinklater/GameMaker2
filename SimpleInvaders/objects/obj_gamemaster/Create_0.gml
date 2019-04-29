/// @description

kPhaseBuild = 1;
kPhaseGame = 2;

kBuildAlarm = 0;

currentPhase = kPhaseBuild;

alarm[kBuildAlarm] = 5;
baddieList = ds_list_create();
numBaddiesBuilt = 0;
baddieMovingDown = false;
baddieRequestMoveDown = false;

draw_set_font(fnt_main);

instance_image_index = 0;

//window_set_fullscreen(true);