
OPTIONS="Reboot\nPoweroff\nLogout"

CHOICE=$(echo -e "$OPTIONS" | rofi -dmenu -i -p "Power Menu")

case "$CHOICE" in
 
    "Reboot")
        loginctl reboot
        ;;
    "Poweroff")
        loginctl poweroff
        ;;
    "Logout")
        loginctl terminate-session "$XDG_SESSION_ID"
        ;;
esac

