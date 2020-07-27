hp = 10;
spd = 2;
dash_spd = spd * 6;
mouseX = 0;
mouseY = 0;
dash_cooldown = 0;
atk_hitbox = noone;
collision = oParentCollision;
targetEnter = noone;
current_dialog = noone;
current_player_attack_damage = 1;

//cria a variável que vê qual foi o último movimento feito
last_pressed = "";

//enum dos estados do player
enum PLAYERSTATE
{
	IDLE,	//parado
	ATTACK,	//ataque
	DASH,   //dash
	DIALOGUE//dialogo
}

//estado do player como IDLE
state = PLAYERSTATE.IDLE;