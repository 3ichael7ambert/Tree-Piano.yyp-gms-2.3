/// @description Update coin
if (x < __view_get( e__VW.XView, 0 ) - 300)
{
    // destroy when out of view
    instance_destroy();
}

// Player - Coin collision test
if (physics_test_overlap(x, y, 0, oBird))
{
    //Add points
    oBird.totalCoins += 1;
    instance_destroy();
}

