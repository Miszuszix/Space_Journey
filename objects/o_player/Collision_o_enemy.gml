with(other){
	if canChange{
		other.sprite_index = s_player_collsion
		other.image_blend = c_red
		o_player.hp--;
	}
	canChange = false;
}