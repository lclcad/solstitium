hsp = 0;
vsp = 0;
spd = 2;
walksp = spd;
dagsp = round(spd * (sqrt(2) / 2));

last_pressed = "";//cria a variável que vê qual foi o último movimento feito

//acertado pelo ataque
hitByAttack = ds_list_create();

//enum dos estados do player
enum PLAYERSTATE
{
	IDLE,	//parado
	ATTACK	//ataque
}

//estado do player como IDLE
state = PLAYERSTATE.IDLE;