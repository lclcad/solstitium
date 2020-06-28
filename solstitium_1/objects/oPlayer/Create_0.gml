spd = 2;
dash_spd = spd * 4;
mouseX = 0;
mouseY = 0;
dash_count = 0;
dash_cooldown = 0;

//cria a variável que vê qual foi o último movimento feito
last_pressed = "";

//acertado pelo ataque
hitByAttack = ds_list_create();

//enum dos estados do player
enum PLAYERSTATE
{
	IDLE,	//parado
	ATTACK,	//ataque
	DASH    //dash
}

//estado do player como IDLE
state = PLAYERSTATE.IDLE;