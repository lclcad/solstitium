switch(state){
	case SQUIRRELSTATE.WANDER: SquirrelState_Wander(); break;
	case SQUIRRELSTATE.CHASE: SquirrelChase(); break;
	case SQUIRRELSTATE.WAIT: SquirrelWait(); break;
	case SQUIRRELSTATE.ATTACK: SquirrelState_Attack(); break;
}