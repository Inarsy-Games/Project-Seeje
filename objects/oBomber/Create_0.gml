/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//redefine attack function
self.attack = function(_dmg_target) { 
	
	_dmg_target.hp -= 1;
	dir += 180;
	
};