//[enemy, cooldown, timer]
enemies = [

[oBomber, 5*60, 0],
["anotherenemyidk", 10*60, 0]

];

for(var i = 0; i < array_length(enemies)-1; i++)
enemies[i][2] = enemies[i][1];