/// @description Draw the dialog box.

// We divide 
var rval = dialog_draw(dialog, dialog_t);

if (rval == 1) {
	// TODO: Pause until UI event?
	at_end = true;
}

if (rval == 2) {
	at_end = true;
	at_end_destroy = true;
}