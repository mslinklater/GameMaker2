/// @description

draw_set_alpha(0.2);
mp_grid_draw(global.navGrid);
draw_set_alpha(1);

mp_grid_add_instances(global.navGrid, objWall, true);