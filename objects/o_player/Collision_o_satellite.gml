with(other){
	effect_create_layer("Background_Small", ef_explosion, self.x, self.y, 0.25, c_white);
	o_stats.points += 100;
	show_debug_message(o_stats.points);
	instance_destroy();
}