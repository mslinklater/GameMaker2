/// @description

var hitBaddie = other;

with(obj_gamemaster)
{
	var hitIndex = ds_list_find_index(baddieList, hitBaddie);
	ds_list_delete(baddieList, hitIndex);
	if(updatingBaddie >= hitIndex)
	{
		updatingBaddie--;
	}
}

// grab the location of the destroyed baddie
var column = other.column;
var row = other.row;
scr_baddieDestroyed(other, column, row);

// Now destroy the baddie and spawn an expostion object
instance_destroy()

global.bulletActive = false;