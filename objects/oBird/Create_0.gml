/// @description  Initialise variables and physics
image_speed = 0;
velocity = 50;
minVelocityX = 80;
minVelocityY = -90;
awake = false;
totalCoins = 0;
// Create player fixture
fix = physics_fixture_create(); 
physics_fixture_set_circle_shape(fix, sprite_get_height(sprite_index)/2);
physics_fixture_set_density(fix, 1);
physics_fixture_set_linear_damping(fix, 0.1);
physics_fixture_set_restitution(fix, 0);
physics_fixture_set_friction(fix, 0.0);
physics_fixture_set_awake(fix, false);
physics_fixture_bind(fix, id);

//up again
yforce=10;


