switch(state){
	case SCORPIOSTATE.WANDER: ScorpioState_Wander(); break;
	case SCORPIOSTATE.CHASE: ScorpioChase(); break;
	case SCORPIOSTATE.WAIT: ScorpioWait(); break;
	case SCORPIOSTATE.ATTACK: ScorpioState_Attack(); break;
	case SCORPIOSTATE.DEAD: ScorpioState_Dead(); break;
}