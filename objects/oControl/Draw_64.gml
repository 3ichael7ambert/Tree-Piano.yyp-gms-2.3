/// @description  On screen info
draw_set_color(c_black)
draw_set_font(font0);
draw_text(5,5,string_hash_to_newline("fps = " + string(fps)));
draw_text(5, 25, string_hash_to_newline("Coins = " + string(oBird.totalCoins)));
draw_set_color(c_green);


draw_text(5,45,string_hash_to_newline("x = " + string(oBird.x)));
draw_text(5,65,string_hash_to_newline("y = " + string(oBird.y)));



