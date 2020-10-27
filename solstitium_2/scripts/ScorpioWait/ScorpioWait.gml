function ScorpioWait(){
	if(++stateWait >= stateWaitDuration)
	{
		stateWait = 0;
		state = stateTarget;
	}
}