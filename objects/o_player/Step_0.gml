var up, down, left, right, diag, hMove, vMove, moveSpeed, diagSpeed;

up =	keyboard_check(ord("W"))
down =	keyboard_check(ord("S"))
right = keyboard_check(ord("D"))
left =  keyboard_check(ord("A"))
diag = (up or down) and (left or right)

vMove = down - up;
hMove = right - left;
moveSpeed = 2;
diagSpeed = sqrt(moveSpeed) / 1.5

y = clamp(y, 8, room_height - 8);
x = clamp(x, 8, room_width - 8);

#region movement

if vMove != 0 and hMove != 0{
	x += hMove * diagSpeed;
	y += vMove * diagSpeed;
}else{
	if vMove != 0{
		y += vMove * moveSpeed;
	}

	if hMove != 0{
		x += hMove * moveSpeed;
	}
}

#endregion movement

#region collision

if !place_meeting(self.x, self.y, o_enemy){
	image_blend = c_white;
	sprite_index = s_player_kam;
	canChange = true;
}

if hp <= 0 {
	instance_destroy();
}

#endregion collision