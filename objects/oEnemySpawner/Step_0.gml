//count down timer for the enemies 
for(var i = 0; i < array_length(enemies)-1; i++) {
	
	enemies[i][2] -= 1;
	
	if enemies[i][2] <= 0 {
		
		var _xspawn = choose(0, room_width);
		var _yspawn = irandom_range(0, room_height);
		if choose(0, 1) == 0 {
			_xspawn = irandom_range(0, room_width);
			_yspawn = choose(0, room_height);
		}
		
		instance_create_depth(_xspawn, _yspawn, depth, enemies[i][0]);	
		
		enemies[i][2] = enemies[i][1];
	}
	
}