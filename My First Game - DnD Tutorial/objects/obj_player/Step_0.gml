/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B375611
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2FC4C743
/// @DnDArgument : "key" "vk_right"
var l2FC4C743_0;
l2FC4C743_0 = keyboard_check(vk_right);
if (l2FC4C743_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EA777C1
	/// @DnDParent : 2FC4C743
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3DE5911D
/// @DnDArgument : "key" "vk_left"
var l3DE5911D_0;
l3DE5911D_0 = keyboard_check(vk_left);
if (l3DE5911D_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54A9643A
	/// @DnDParent : 3DE5911D
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 60C51A36
/// @DnDArgument : "key" "vk_up"
var l60C51A36_0;
l60C51A36_0 = keyboard_check(vk_up);
if (l60C51A36_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 092F41C5
	/// @DnDParent : 60C51A36
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 512B15CB
/// @DnDArgument : "key" "vk_down"
var l512B15CB_0;
l512B15CB_0 = keyboard_check(vk_down);
if (l512B15CB_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75CAD211
	/// @DnDParent : 512B15CB
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += 4;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E616874
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x, y, mouse_x, mouse_y)"
var dir = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 0056E675
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 36557258
var l36557258_0;
l36557258_0 = mouse_check_button(mb_left);
if (l36557258_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 786D856F
	/// @DnDParent : 36557258
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 49F9F9B4
		/// @DnDParent : 786D856F
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""Bullets""
		/// @DnDSaveInfo : "objectid" "f96a3311-c186-4340-ac21-72ac42e1f3d7"
		instance_create_layer(x, y, "Bullets", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1454EA90
		/// @DnDParent : 786D856F
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 4;
	}
}