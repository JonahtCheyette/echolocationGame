window_set_position( 200, 200 );

res_x = display_get_width() /2;
res_y = display_get_height() /2;
window_set_size( res_x, res_y);

// enable the use of views
view_enabled = true;
view_visible[0] = true;

// area in window
view_wport[0] = res_x;
view_hport[0] = res_y;
surface_resize(application_surface, res_x, res_y);