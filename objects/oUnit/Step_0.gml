//player tell em where to move an shiii
if mouse_check_button_pressed(mb_left) {
	
	if !selected and position_meeting(mouse_x, mouse_y, id) {
		selected = true;	
	}
	else if selected {
		selected = false;
		target = [mouse_x, mouse_y];
		moving = true;
		instance_create_layer(mouse_x, mouse_y, "floor", oClick);
	}	
	
}

//face the correct direction
if hsp != 0
image_xscale = sign(hsp);

//wiggle while moving
if hsp != 0 or vsp != 0 {
	image_angle += cos(get_timer()/100000);	
}
else
image_angle = 0;

//cooldowns and things
attack_cooldown -= 1;

if instance_exists(oEnemy) and !moving {
	
	//get closest enemy
	closest_enemy = instance_nearest(x, y, oEnemy);

	if closest_enemy != noone {
	
		dir = point_direction(x, y, closest_enemy.x, closest_enemy.y);
	
		//move towards enemy
		if distance_to_object(closest_enemy) > attack_range {
			hsp = lengthdir_x(move_spd, dir);
			vsp = lengthdir_y(move_spd, dir);
		}
		//attack the enemy
		else if attack_cooldown <= 0 {
		
			//stop moving
			hsp = 0;
			vsp = 0;
		
			//face the correct direction
			image_xscale = sign(closest_enemy.x-x);
		
			//actually attack
			if image_index == 0 {
				image_index = 1;
				attack_cooldown = 0;
			}
			else if image_index == 1 and attack_cooldown <= -30 {
				image_index = 2;	
			
				//actually actually attack
				with instance_create_depth(x, y, depth-1, oSwipe) {
					direction = other.dir;
					image_angle = other.dir;
					dmg = other.dmg;
				}
			
			}
			else if image_index == 2 and attack_cooldown <= -50 {
				image_index = 0;
				attack_cooldown = attack_cooldown_duration;
			}
		
		}
	}
}
else if moving {
	dir = point_direction(x, y, target[0], target[1]);
	hsp = lengthdir_x(move_spd, dir);
	vsp = lengthdir_y(move_spd, dir);
	
	if distance_to_point(target[0], target[1]) <= move_spd {
		moving = false;	
	}
	
	image_index = 0;
	
}
else {
	hsp = 0;
	vsp = 0;	
	
	image_index = 0;
	
}

x += hsp;
y += vsp;