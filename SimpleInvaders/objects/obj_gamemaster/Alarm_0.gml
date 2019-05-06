/// @description Build alarm

// create a baddie

var xpos = kBaddieStartX + ((numBaddiesBuilt % 11) * kBaddieStartXStep);
var row = floor(numBaddiesBuilt / 11);
var column = numBaddiesBuilt % 11;
var ypos = kBaddieStartY - (row * kBaddieStartYStep) + wave * 8;

var whichBaddie = 0;

switch(row)
{
	case 0:
	case 1:
		whichBaddie = obj_baddie1;
		break;
	case 2:
	case 3:
		whichBaddie = obj_baddie2;
		break;
	case 4:
		whichBaddie = obj_baddie3;
		break;
}

var newBaddie = instance_create_layer(xpos, ypos, "Instances", whichBaddie);
newBaddie.row = row;
newBaddie.column = column;

ds_list_add(baddieList, newBaddie);

// increment numBaddiesBuilt

numBaddiesBuilt++;

// if more to go, set the alarm again

if(numBaddiesBuilt < 55)
{
	alarm[kBuildAlarm] = 1;
}
else
{
	// grid of baddies is fully set up
	global.canPlayerMove = true;
	currentPhase = kPhaseGame;
	updatingBaddie = 0;
	baddieDirection = kDirectionRight;
	baddieDelta = kBaddieXSpeed;
	
	// init the bomb dropping array
	baddieOccupancyList = ds_list_create();
	baddieBombSpawnRow = ds_list_create();
	baddieColumnXPos = 0;
	baddieColumnYPos = 0;
	
	for(var i=0 ; i<55 ; i++)
	{
		ds_list_add(baddieOccupancyList, true);	// occupancy of position
	}
	bombAvailable = true;
	baddieBombSpawnRow = ds_list_create();
	for(var i=0 ; i<11 ; i++)
	{
		ds_list_add(baddieBombSpawnRow, 0);
	}
	// spawn barriers
	if(wave < 7)
	{
		with(obj_barrier_spawner)
		{
			instance_create_layer(x, y, "Instances", obj_barrier);
		}
	}
}
