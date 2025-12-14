//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/  
	{"󰓃:", "amixer sget Master | awk -F'[][]' '/Left:/ { print $2 }'",					1,		20},
  {" :", "xkblayout-state print '%s'",					1,		30},
  {"󰁹:", "cat /sys/class/power_supply/BAT0/capacity", 15, 0},
  {"", "date '+%d/%m/%Y %H:%M'",					5,		0},
 };

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
