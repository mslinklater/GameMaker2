/// @description 

image_alpha = 0.1;

// middle column
instance_create_layer(x, y, "Instances", obj_barrier_full);
instance_create_layer(x, y-4, "Instances", obj_barrier_full);
instance_create_layer(x, y-8, "Instances", obj_barrier_full);

// mid left
instance_create_layer(x-4, y+4, "Instances", obj_barrier_tl);
instance_create_layer(x-4, y, "Instances", obj_barrier_full);
instance_create_layer(x-4, y-4, "Instances", obj_barrier_full);
instance_create_layer(x-4, y-8, "Instances", obj_barrier_full);

// far left
instance_create_layer(x-8, y+4, "Instances", obj_barrier_full);
instance_create_layer(x-8, y, "Instances", obj_barrier_full);
instance_create_layer(x-8, y-4, "Instances", obj_barrier_full);
instance_create_layer(x-8, y-8, "Instances", obj_barrier_br);

// mid right
instance_create_layer(x+4, y+4, "Instances", obj_barrier_tr);
instance_create_layer(x+4, y, "Instances", obj_barrier_full);
instance_create_layer(x+4, y-4, "Instances", obj_barrier_full);
instance_create_layer(x+4, y-8, "Instances", obj_barrier_full);

// far right
instance_create_layer(x+8, y+4, "Instances", obj_barrier_full);
instance_create_layer(x+8, y, "Instances", obj_barrier_full);
instance_create_layer(x+8, y-4, "Instances", obj_barrier_full);
instance_create_layer(x+8, y-8, "Instances", obj_barrier_bl);


