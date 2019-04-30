// A baddie has been destroyed at a certain column, row location

var baddie = argument0;
var column = argument1;
var row = argument2;

// spawn and explosion and destroy the baddie
instance_create_layer(baddie.x, baddie.y, "Instances", obj_baddie_explosion);
instance_destroy(baddie);

// update the bomb drop locations in the game master
var numAliveBaddies = instance_number(obj_baddie);

// update the occupancy list
ds_list_set(obj_gamemaster.baddieOccupancyList, row*11 + column, false);
