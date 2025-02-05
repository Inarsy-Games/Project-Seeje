// Inherit the parent event
event_inherited();

//enemy things
hsp = 0;
vsp = 0;
move_spd = 1;
acc = 0.2;

attack_cooldown = 0;
dir = image_angle;

//function to attack
self.attack = function(_dmg_target) { /* Default or empty function */ };