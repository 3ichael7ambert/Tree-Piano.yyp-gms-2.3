/// @description  Physics debug draw
if (global.debug)
{
    var flag = phy_debug_render_aabb | phy_debug_render_coms;
    physics_world_draw_debug(flag);
}

