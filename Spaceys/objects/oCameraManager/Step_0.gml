/// @description

if(keyboard_check(vk_left))
{
	mCameraOffset--;
}

if(keyboard_check(vk_right))
{
	mCameraOffset++;
}

camera_set_view_pos(view_camera[mViewportNum], mCameraOffset, 0);

