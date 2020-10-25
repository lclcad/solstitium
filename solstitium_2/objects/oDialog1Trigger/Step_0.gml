if(place_meeting(x, y, player))
{
	triggered = true;
	Auto_Dialog1();
}

switch(target){
	case TARGET_SPEAKER.GUARD: guard_triggered = true; current_speaker = oAutoDialogGuard1; break;
	case TARGET_SPEAKER.FARMER: farmer_triggered = true; current_speaker = oAutoDialogFarmer1 break;
}