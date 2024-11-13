globalvar gameSpeed;
gameSpeed = game_get_speed(gamespeed_fps);
alarm[0] = random_range(gameSpeed * .5, gameSpeed * 3)
alarm[1] = random_range(gameSpeed * 5, gameSpeed * 10)