Thank you for purchasing my Smooth Hills asset!

Controls are as follows:
Left mouse/Touch/Down arrow - Dive
Cntl - Show Debug view

In the game demo, you must dive into the curve of the hill to gain speed to fly for as long as possible.

This file explains the implementation of the hills, physics, and explains each object.

HILL GENERATION
The "hillPoints" ds_list holds the peaks of all the hills.
Each hill has 1 key hill point (generally the peak or trough)

The hill points are generated using a simple generation algorithm to space them out properly 
and make sure they are within the confinds of the screen. You can alter the values as you wish
to create a different feel to the game.

Once the hill points are generated, each hill is split into "segments"
The width of these segments are controlled with the variable hillSegmentWidth
These segments are placed along a cosine curve towards the next hill point.
This is where we use draw_line (or draw_sprite) - between each segment.

When one hill is far from view, another is generated at the end of the list and that one is destroyed,
thus we get an "endless runner" type game. You can also predetermine how many hills
there will be by setting the numStartingHills variable and just not generating any more.

PHYSICS
The other big part of the project is physics. The player (bird) and segments all use physics.
The collision works by creating an "edge fixture" between each segment. When a new hill is generated,
and thus a new set of segments, a edge fixture is generated between each segment and the previous one.
Note that empty collision events are required for the physics to work.

The players motion is controlled through the physics_ functions, you can edit these
to gain vastly different results.

OBJECTS
oControl - Sets up the initial hill points, and then updates them and creates new ones when needed.
It also controls the view so that it sticks to the player and zooms out.

oHillPoint - Generates the segments and segment fixtures for this hill point

oSegment - Draws itself, which eventually makes up the curvature of the entire hill. Also draws 2 triangles beneath it 
to fill in the main hill area.

oBird - The player object, has varaibles to control the movement and handles user input. Also has empty 
collision events used by physics.

oCoins - A new object created for an update. Coins are created at random chance within hills. The logic that 
determines if they are created is in the script CreateHillPoint. They are actually created in oHillPoint > alarm 0.
They are destroyed, updated and collision checked in their own step event.