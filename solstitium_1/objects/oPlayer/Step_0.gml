key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_attack = mouse_check_button_pressed(mb_left);
key_dash = keyboard_check_pressed(vk_shift);

if(hp == 0){
	state = PLAYERSTATE.DEAD;
}

if(key_down){last_pressed = "down"}
if(key_left){last_pressed = "left"}
if(key_right){last_pressed = "right"}
if(key_up){last_pressed = "up"}

switch(state)
{
	case PLAYERSTATE.IDLE: PlayerState_Idle(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
	case PLAYERSTATE.DASH: PlayerState_Dash(); break;
	case PLAYERSTATE.DIALOGUE: PlayerState_Dialogue(current_dialog); break;
	case PLAYERSTATE.HIT: PlayerStateHit(); break;
	case PLAYERSTATE.DEAD: PlayerStateDead(); break;
}