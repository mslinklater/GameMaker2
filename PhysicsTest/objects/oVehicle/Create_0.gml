/// @description Insert description here
// You can write your code in this editor

var leftWheelX = x + 5;
var rightWheelX = x + sprite_width - 5;
var wheelY = y + sprite_height + 5;

var enginePower = 25;
var suspensionForce = 70;

leftHub = instance_create_layer(leftWheelX, wheelY, "Instances", oHub);
rightHub = instance_create_layer(rightWheelX, wheelY, "Instances", oHub);

leftWheel = instance_create_layer(leftWheelX, wheelY, "Instances", oWheel);
rightWheel = instance_create_layer(rightWheelX, wheelY, "Instances", oWheel);

leftSuspensionJoint = physics_joint_prismatic_create(self, leftHub, leftWheelX, wheelY, 0, 1, -2, 0, true, suspensionForce, 100, true, false);
rightSuspensionJoint = physics_joint_prismatic_create(self, rightHub, rightWheelX, wheelY, 0, 1, -2, 0, true, suspensionForce, 100, true, false);

leftHubJoint = physics_joint_revolute_create(leftHub, leftWheel, leftWheelX, wheelY, 0, 0, false, enginePower, 0, true, false);
rightHubJoint = physics_joint_revolute_create(rightHub, rightWheel, rightWheelX, wheelY, 0, 0, false, enginePower, 0, true, false);
