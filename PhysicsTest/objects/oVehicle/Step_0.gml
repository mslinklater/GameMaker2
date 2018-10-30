/// @description Update

// Apply left/right input

var leftRight = 0;

if(keyboard_check(vk_left))
{
	leftRight--;
}

if(keyboard_check(vk_right))
{
	leftRight++;
}

physics_joint_set_value(leftHubJoint, phy_joint_motor_speed, 20 * leftRight);
physics_joint_set_value(rightHubJoint, phy_joint_motor_speed, 20 * leftRight);

// Manage suspension

//var leftSusp = physics_joint_get_value(leftSuspensionJoint, phy_joint_translation);
//physics_joint_set_value(leftSuspensionJoint, phy_joint_motor_force, leftSusp * -100);