hsp = 0;
vsp = 0;
spd = 2;

dashspd = 14;
dash_frames = 15;
dash_cooldown_duration = 120
dash_cooldown = dash_cooldown_duration;//dps implementar um cooldown do dash
can_dash = true;
dash_count = 0;

//bloqueio de pressionamento pro dash
lock_pressed = false;

//cria a variável que vê qual foi o último movimento feito
last_pressed = "";

//acertado pelo ataque
hitByAttack = ds_list_create();

//enum dos estados do player
enum PLAYERSTATE
{
	IDLE,	//parado
	ATTACK,	//ataque
	MOVEMENT //movimento
}

//estado do player como IDLE
state = PLAYERSTATE.IDLE;