#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER "  "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0

// Define blocks for the status feed as X(icon, cmd, interval, signal).
#define BLOCKS(X)             \
    X("", "cat ~/.klandestin_current", 5, 0) \
    X("", "wpctl get-volume @DEFAULT_AUDIO_SINK@", 3, 0)  \
    X("eDP-1: ", "xrandr --verbose --current | grep ^'eDP-1' -A5 | tail -n1 | grep -Po '[0-9\.]+'", 10, 0)  \
    X("Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g", 30, 0)  \
    X("", "network.sh", 30, 10) \
    X("", "date '+%b %d (%a) %I:%M%p'", 5, 10)

#endif  // CONFIG_H
