/// @description Build alarm

// create a baddie

var xpos = kBaddieStartX + ((numBaddiesBuilt % 11) * kBaddieStartXStep);
var row = floor(numBaddiesBuilt / 11);
var ypos = kBaddieStartY - (row * kBaddieStartYStep);

switch(row)
{
	case 0:
		instance_create_layer(xpos, ypos, "Instances", obj_baddie1);
		break;
	case 1:
		instance_create_layer(xpos, ypos, "Instances", obj_baddie1);
		break;
	case 2:
		instance_create_layer(xpos, ypos, "Instances", obj_baddie2);
		break;
	case 3:
		instance_create_layer(xpos, ypos, "Instances", obj_baddie2);
		break;
	case 4:
		instance_create_layer(xpos, ypos, "Instances", obj_baddie3);
		break;
}


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
}
