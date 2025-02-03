//move around
if mouse_check_button_pressed(mb_left) {
	
	if selected {
		target = [mouse_x, mouse_y];
		selected = false;
		instance_create_layer(mouse_x, mouse_y, "floor", oClick);
	}
	else if position_meeting(mouse_x, mouse_y, id)
	selected = true;	
}

if distance_to_point(target[0], target[1]) > move_spd {
	var _dir = point_direction(x, y, target[0], target[1]);
	hsp = lengthdir_x(move_spd, _dir);	
	vsp = lengthdir_y(move_spd, _dir);
	
	sprite_index = sCastleWalking;
	shadow_xscale = xscale_div*sprite_width;
}
else {
	hsp = 0;
	vsp = 0;
	
	sprite_index = sCastle;
	shadow_xscale = xscale_div*sprite_width + (xscale_div*2);
}

x += hsp;
y += vsp;