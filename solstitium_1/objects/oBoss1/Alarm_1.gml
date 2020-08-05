switch(next_atk){
	case "fire": state = PLANTSTATE.ATKFIRE; break;
	case "spike": state = PLANTSTATE.ATKSPIKE; break;
	case "poison": state = PLANTSTATE.ATKPOISON; break;
	case "bash": state = PLANTSTATE.ATKBASH; break;
}
has_attack_chosen = false;