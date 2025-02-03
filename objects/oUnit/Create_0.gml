//shadow things
event_inherited();
shadow_xscale = (xscale_div*sprite_width/2) + (xscale_div*4);
shadow_yscale = 0.5;

//unit things
hsp = 0;
vsp = 0;
move_spd = 2;
dir = 0;

selected = false;
moving = false; //if theyre currently moving to where the player told them to
target = [x, y];

attack_cooldown = 0;
attack_cooldown_duration = 60;
attack_range = 30;
closest_enemy = noone;
dmg = 1;

lvl = 1;