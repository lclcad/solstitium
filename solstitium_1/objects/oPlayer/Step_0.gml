key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_attack = keyboard_check_pressed(vk_space);

if(key_down){last_pressed = "down"}
if(key_left){last_pressed = "left"}
if(key_right){last_pressed = "right"}
if(key_up){last_pressed = "up"}

switch(state)
{
	case PLAYERSTATE.IDLE: PlayerState_Idle(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
}