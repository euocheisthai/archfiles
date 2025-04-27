static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "cat ~/.klandestin_current", 5, 0},
	{"", "wpctl get-volume @DEFAULT_AUDIO_SINK@", 3, 0},
	{"eDP-1: ", "xrandr --verbose --current | grep ^'eDP-1' -A5 | tail -n1 | grep -Po '[0-9\.]+'",	5,	0},
	{"Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{"", "date '+%b %d (%a) %I:%M%p'",			5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;

