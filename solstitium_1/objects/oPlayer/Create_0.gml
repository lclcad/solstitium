hsp = 0;
vsp = 0;
spd = 2;
walksp = spd;
dagsp = round(spd * (sqrt(2) / 2));

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