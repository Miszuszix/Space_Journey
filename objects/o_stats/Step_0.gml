var leave, reset;
leave = keyboard_check(vk_escape);
reset = keyboard_check(ord("R"));

if leave{
	game_end();
}

if reset{
	game_restart();
}