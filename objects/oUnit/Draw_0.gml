//shadow things
event_inherited();

//show stats
if selected {
	
	var _stats = [
		["Health", hp],
		["Time to Attack", attack_cooldown]
		];
	
	for(var i = 0; i < array_length(_stats); i++) {
		
		draw_text(0, i*string_height(_stats[i][0]), _stats[i][0] + ": " + string(_stats[i][1]));
		
	}
	
}