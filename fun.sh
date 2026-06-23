check_errors() {
    local log=$1  # function ki argument ga vache file peru
    if [ -f "$log" ]; then
        count=$(tail -n 50 "$log" | grep -c "ERROR")
        echo "$log: $count errors"
    fi
}

check_errors /var/log/syslog
check_errors /var/log/auth.log
