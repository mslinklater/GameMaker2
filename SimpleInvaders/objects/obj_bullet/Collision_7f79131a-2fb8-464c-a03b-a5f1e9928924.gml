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
instance_create_layer(other.x, other.y, "Instances", obj_baddie_explosion);
instance_destroy(other)
instance_destroy()

global.bulletActive = false;