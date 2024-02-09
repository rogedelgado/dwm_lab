//Modify this file to change what commands output to your statusbar, and recompile using the make command.
//
// When using kill to signal, remember to add 34 to the value that you are configuring here!
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "spotify_status.sh",	          15,          10},
	{"", "get_pulse_volume.sh",   		   0,          11},
	{"", "battery.sh",       					  15,		12},
	{"", "backlight.sh",     					  15,		13},
	{"", "network_manager.sh",			  30,           0},
	{"", "calendar.sh",       			  60,           14},
	{"", "date.sh",          			  60,           0},
	{"", "docs_git_check.sh",       	  30,          12},
	{"", "todo_git_check.sh",       	  30,          13},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   ";
static unsigned int delimLen = 5;
