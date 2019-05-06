/// @description

kPhaseBuild = 1;
kPhaseGame = 2;
kPhaseGameOver = 3;

kBuildAlarm = 0;
kUFOAlarm = 1;

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

wave = 0;

instance_image_index = 0;

//window_set_fullscreen(true);

lives = 3;
score = 0;

alarm_set(kUFOAlarm, 300);
