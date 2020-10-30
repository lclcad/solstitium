function SquirrelWait(){
	if(++stateWait >= stateWaitDuration)
	{
		stateWait = 0;
		state = stateTarget;
	}
}