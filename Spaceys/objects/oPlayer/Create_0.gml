/// @description

var wheelBase = 16;
var suspensionMaxExtension = 5;

// Main body
mBodyObject = instance_create_layer(x, y, "Instances", oBodyTest);
mBodyJoint = physics_joint_weld_create(self, mBodyObject, x, y, 0, 0, 0, false);

// Suspension
var leftHubX = x-wheelBase;
var leftHubY = y+suspensionMaxExtension;
mLeftHubObject = instance_create_layer(leftHubX, leftHubY, "Instances", oHub );
mLeftSuspensionJoint = physics_joint_prismatic_create(
							mBodyObject, mLeftHubObject, 
							leftHubX, leftHubY,
							0, 1, 
							-suspensionMaxExtension, 0, true,
							500, 10, false, false);

var rightHubX = x+wheelBase;
var rightHubY = y+suspensionMaxExtension;
mRightHubObject = instance_create_layer(rightHubX, rightHubY, "Instances", oHub );
mRightSuspensionJoint = physics_joint_prismatic_create(
							mBodyObject, mRightHubObject, 
							rightHubX, rightHubY,
							0, 1, 
							-suspensionMaxExtension, 0, true,
							500, 10, false, false);
							
// Wheels
mLeftWheelObject = instance_create_layer(leftHubX, leftHubY, "Instances", oWheelTest);
mLeftWheelJoint = physics_joint_revolute_create(mLeftHubObject, mLeftWheelObject,
							leftHubX, leftHubY,
							0, 0, false,
							10, 5, true, false);
							
mRightWheelObject = instance_create_layer(rightHubX, rightHubY, "Instances", oWheelTest);
mRightWheelJoint = physics_joint_revolute_create(mRightHubObject, mRightWheelObject,
							rightHubX, rightHubY,
							0, 0, false,
							10, 5, true, false);
