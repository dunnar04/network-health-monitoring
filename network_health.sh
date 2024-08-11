#!/bin/bash

# The list of device IP to monitor
devices=("10.1.0.9" "10.1.0.10" "10.1.0.11" "10.1.0.13" "10.1.0.14")

# Log file location
log_file="/var/log/network_health.log"

# Function to check network health
check_network_health() {
	for device in "${devices[@]}"; do
		echo "Pinging $device"
		ping -c 4 $device &> /dev/null

		if [ $? -eq 0 ]; then
			echo "$(date): $device is reachable." >> $log_file
		else
			echo "$(date): $device is NOT rechable!" >> $log_file
			# send an alert (e.g., email or system notification)
		fi
	done	
}

# Run the network health
check_network_health
