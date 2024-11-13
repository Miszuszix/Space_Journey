if !instance_exists(o_player){
	draw_text(200, 180, "GAME OVER");
	draw_text(200, 200, "SCORE: " + string(o_stats.points));
}

// Tło paska
draw_set_color(c_yellow);
draw_rectangle(room_width / 2 - 50, 10, room_width / 2 + 50, 11, false); // Tło paska
draw_sprite(s_player, 0, (room_width / 2 - 50) + progress, 10)
if canProgress{	
	draw_sprite(s_player, 0, (room_width / 2 - 50) + progress, 10)
	canProgress = false;
	alarm[0] = 5;
}