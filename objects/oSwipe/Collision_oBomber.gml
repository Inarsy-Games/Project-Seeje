if ds_list_find_index(enemies_hit, other.id) == -1 {
	ds_list_add(enemies_hit, other.id);
	other.hp -= dmg;
}