switch(state){
	case PLANTSTATE.INACTIVE: state = PLANTSTATE.INACTIVE; break;
	case PLANTSTATE.CHOSEATTACK: PlantStateChooseAttack(); break;
	case PLANTSTATE.ATKSPIKE: PlantStateAtkSpike(); break;
	case PLANTSTATE.ATKPOISON: break;
	case PLANTSTATE.ATKFIRE: PlantStateAtkFire(); break;
	case PLANTSTATE.ATKBASH: depth = 0; PlantStateAtkBash(); break;
}