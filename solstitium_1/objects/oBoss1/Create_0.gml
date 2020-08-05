//variaveis padrao
hp = 60;
collidable = false;
is_hit = false;
is_hitable=false;

//variaveis para a escolha do ataque
last_attack = noone;
has_attack_chosen = false;

//variaveis para o esquema de cores dos olhos
c_alpha2 = 0;
color1 = 0;
color2 = 0;
correspondant_color = 0;
save_color1 = 0;
cur_color = -1;
color_list = ds_list_create();
ds_list_add(color_list, 1, 2, 3, 4);

//enum dos estados do boss
enum PLANTSTATE{
	INACTIVE,
	CHOSEATTACK,
	ATKSPIKE,
	ATKPOISON,
	ATKFIRE,
	ATKBASH,
	DYING
}

state = PLANTSTATE.CHOSEATTACK;