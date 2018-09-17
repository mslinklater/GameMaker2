/// @description Explode

image_alpha -= 0.05;
image_xscale += 0.5;
image_yscale += 0.5;
if image_alpha <= 0
{
instance_destroy();
}
else alarm[1] = 1;

