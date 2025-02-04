//move towards target
var _tar = point_direction(x, y, oCastle.x, oCastle.y);
var _diff = angle_difference(dir, _tar);
dir -= min(abs(_diff), rotation_speed) * sign(_diff);

hsp = lengthdir_x(move_spd, dir);
vsp = lengthdir_y(move_spd, dir);

x += hsp;
y += vsp;

//look at direction
image_angle = dir;

//attack
var _target = instance_nearest(x, y, oUnit);
if distance_to_object(oCastle) < attack_distance
_target = oCastle;

if !hit_on_contact {
	attack_cooldown -= 1;
	if distance_to_object(_target) < attack_distance and attack_cooldown <= 0 {
		attack(_target);	
		attack_cooldown = attack_cooldown_duration;
	}
}
else {
	if place_meeting(x, y,_target)
	attack(_target);
}	

//die if you need to die
if hp <= 0
instance_destroy(id);