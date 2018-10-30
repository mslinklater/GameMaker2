/// @description Insert description here
// You can write your code in this editor

leftWheel = instance_create_layer(x-10, y + sprite_height + 20, "Instances", oHub);
rightWheel = instance_create_layer(x + sprite_width + 10, y + sprite_height + 20, "Instances", oHub);

leftSuspension = physics_joint_prismatic_create(self, leftWheel, x, y, 0, 1, -10, 10, true, 10, 5, true, false);
rightSuspension = physics_joint_prismatic_create(self, rightWheel, x, y, 0, 1, -10, 10, true, 10, 5, true, false);

