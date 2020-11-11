hp = 10;
spd = 2;
dash_spd = spd * 6;
mouseX = 0;
mouseY = 0;
dash_cooldown = 0;
atk_hitbox = noone;
collision = oParentCollision;

collidable = false;

talking_to_moon = false;

key_hb = oKeyHB;

targetEnter = noone;
current_dialog = noone;
current_player_attack_damage = 1;
in_combat = false;
last_room = room;
flash = 0;
is_hitable = true;
key_count = 0;

//runas
rune_count = 0;

//cria a variável que vê qual foi o último movimento feito
last_pressed = "";


//enum dos estados do player
enum PLAYERSTATE
{
	IDLE,	//parado
	ATTACK,	//ataque
	DASH,   //dash
	DIALOGUE,//dialogo
	HIT,     //acertado por um ataque
	DEAD
}

//estado do player como IDLE
state = PLAYERSTATE.IDLE;