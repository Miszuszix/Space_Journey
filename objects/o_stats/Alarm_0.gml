if instance_exists(o_player){
	if progress > max_progress{
		if room != room_last{
			room_goto_next()
			levelSpeed = .07
		}
	}
	canProgress = true;
	progress += levelSpeed;
	alarm[0] = 5;
}