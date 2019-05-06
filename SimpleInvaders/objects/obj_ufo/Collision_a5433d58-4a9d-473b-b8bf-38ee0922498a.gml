/// @description

score += irandom_range(10, 50) * 10;
instance_destroy();
instance_destroy(other);

instance_create_layer(x, y, "Instances", obj_baddie_explosion);
