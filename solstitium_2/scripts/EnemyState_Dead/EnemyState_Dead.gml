function EnemyState_Dead() {
	//morreu, nao sei oq botar aqui
	state = ENEMYSTATE.DEAD;
	sprite_index = sEnemyDead;
	player.key_count += 1;
	show_debug_message("FUCKING KEY COUNT: " + player.key_count);
	instance_destroy(oPassage);
}
