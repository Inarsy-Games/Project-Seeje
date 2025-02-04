//determine target
if instance_exists(oUnit) {
	
	var _inst = instance_nearest(x, y, oUnit);
	if distance_to_object(_inst) < target_distance 
	target = _inst;
	else
	target = oCastle;
}
else
target = oCastle;

//move towards target
dir = point_direction(x, y, target.x, target.y);

if distance_to_object(target) > attack_distance {
	hsp = lengthdir_x(move_spd, dir);
	vsp = lengthdir_y(move_spd, dir);
}
else {
	hsp = 0;
	vsp = 0;
}

x += hsp;
y += vsp;

//look at target
image_angle = round(dir);

//attack
attack_cooldown -= 1;
if distance_to_object(target) < attack_distance and attack_cooldown <= 0 {
	attack();	
	attack_cooldown = attack_cooldown_duration;
}

//die if you need to die
if hp <= 0
instance_destroy(id);