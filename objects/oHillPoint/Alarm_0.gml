/// @description  Create segments
// Get the 2 points, this one and the previous one
p0 = oControl.hillPoints[| position-1];
p1 = oControl.hillPoints[| position];
    
// Calculate the number of segments
hillSegments = floor((p1.x-p0.x)/oControl.hillSegmentWidth);
dx = (p1.x - p0.x) / hillSegments;

// Get the delta angle
da = pi / hillSegments;

// Get the mid point of the cosine curve
ymid = (p0.y + p1.y) / 2;

// Calculate half the cosine curve
ampl = (p0.y - p1.y) / 2;
pt0 = p0;

var point1X, point1Y, point0X, point0Y;
point0X = p0.x;
point0Y = p0.y;

// Go through all segments
for (j = 1; j < hillSegments+1; j++) {

    // This point X equals the previous points X plus current segment times x difference
    point1X = p0.x + j*dx;
    point1Y = ymid + ampl * cos(da*j);
    
    // If this hill point gets coins
    if (hasCoins)
    {
        // Create them at each segment
        instance_create(point0X, point0Y -20, oCoin);
    }
    // Create the segment
    with (instance_create( 0, 0,oSegment))
    {
        // Assign the start and end points
        startX = point0X;
        startY =  point0Y;
        endX = point1X
        endY = point1Y;
        
        // Create an edge fixture for this part of the hill
        fix = physics_fixture_create();
        physics_fixture_set_edge_shape(fix, startX, startY, endX, endY);
        physics_fixture_bind(fix, id);
        physics_fixture_delete(fix);
    }
    point0X = point1X;
    point0Y = point1Y;
}

