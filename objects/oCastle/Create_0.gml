// Inherit the parent event
event_inherited();

//set starting position
x = room_width/2;
y = room_height/2;

//move around
hsp = 0;
vsp = 0;
move_spd = 0.5;
selected = false;
target = [x, y];

hp = 1000;