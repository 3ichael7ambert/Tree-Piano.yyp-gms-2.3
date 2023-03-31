function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // oControl
	global.__objectDepths[1] = 0; // oHillPoint
	global.__objectDepths[2] = 10; // oSegment
	global.__objectDepths[3] = 0; // oBird
	global.__objectDepths[4] = 0; // oCoin
	global.__objectDepths[5] = -1000; // o_music
	global.__objectDepths[6] = 5; // oPlat
	global.__objectDepths[7] = 0; // ERRORfx
	global.__objectDepths[8] = 0; // ERRORfx2
	global.__objectDepths[9] = 0; // oCamera
	global.__objectDepths[10] = -1; // oKey
	global.__objectDepths[11] = -3; // oKey2
	global.__objectDepths[12] = -3; // oKey2b
	global.__objectDepths[13] = -3; // oKey2c
	global.__objectDepths[14] = -3; // oKey2d
	global.__objectDepths[15] = -3; // oKey2e
	global.__objectDepths[16] = 1; // game_controller
	global.__objectDepths[17] = 0; // obj_swipeAnyway
	global.__objectDepths[18] = 0; // obj_swipeFour
	global.__objectDepths[19] = 0; // obj_swipeEight


	global.__objectNames[0] = "oControl";
	global.__objectNames[1] = "oHillPoint";
	global.__objectNames[2] = "oSegment";
	global.__objectNames[3] = "oBird";
	global.__objectNames[4] = "oCoin";
	global.__objectNames[5] = "o_music";
	global.__objectNames[6] = "oPlat";
	global.__objectNames[7] = "ERRORfx";
	global.__objectNames[8] = "ERRORfx2";
	global.__objectNames[9] = "oCamera";
	global.__objectNames[10] = "oKey";
	global.__objectNames[11] = "oKey2";
	global.__objectNames[12] = "oKey2b";
	global.__objectNames[13] = "oKey2c";
	global.__objectNames[14] = "oKey2d";
	global.__objectNames[15] = "oKey2e";
	global.__objectNames[16] = "game_controller";
	global.__objectNames[17] = "obj_swipeAnyway";
	global.__objectNames[18] = "obj_swipeFour";
	global.__objectNames[19] = "obj_swipeEight";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
