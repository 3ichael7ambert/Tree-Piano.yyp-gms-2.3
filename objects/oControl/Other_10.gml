/// @description Create new hill point
totalHills++;
GetNextHillPosition();
CreateHillPoint();
// Invert the hill direction
dir *= -1;
// Reset the flag
newHillPoint = false;

