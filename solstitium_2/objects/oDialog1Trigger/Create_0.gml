triggered = false;
player = oPlayer;

guard_triggered = false;
farmer_triggered = false;

current_speaker = noone;

enum TARGET_SPEAKER
{
	GUARD,
	FARMER
}

target = TARGET_SPEAKER.GUARD;