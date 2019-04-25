/// @description Build alarm

// create a baddie

var xpos = kBaddieStartX + ((numBaddiesBuilt % 11) * kBaddieStartXStep);
var row = floor(numBaddiesBuilt / 11);
var ypos = kBaddieStartY - (row * kBaddieStartYStep);

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
	global.canPlayerMove = true;
	currentPhase = kPhaseGame;
	updatingBaddie = 0;
	baddieDirection = kDirectionRight;
	baddieDelta = 2;
}
