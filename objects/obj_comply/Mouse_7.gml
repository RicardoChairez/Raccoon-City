if(!obj_detective.is_active){
	obj_labomba_boss.timer--;
	with (inst_bomb) {
	m_send(fsm, "comply");
	}

}
