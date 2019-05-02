/// @description

kPhaseBuild = 1;
kPhaseGame = 2;

kBuildAlarm = 0;

currentPhase = kPhaseBuild;

alarm[kBuildAlarm] = 5;
baddieList = ds_list_create();
baddieOccupancyList = ds_list_create();
baddieBombSpawnRow = ds_list_create();
baddieColumnXPos = 0;
baddieColumnYPos = 0;
numBaddiesBuilt = 0;
baddieMovingDown = false;
baddieRequestMoveDown = false;
bombAvailable = false;

draw_set_font(fnt_main);

instance_image_index = 0;

//window_set_fullscreen(true);