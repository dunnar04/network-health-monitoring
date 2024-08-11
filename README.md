# network-health-monitoring
A bash script for automated network health monitoring 
Network Health Monitoring Script
Overview
The Network Health Monitoring Script is a Bash script designed to automate the monitoring of network health across multiple devices. It performs the following tasks:
•	Pings specified devices to check connectivity.
•	Measures latency for each device.
•	Verifies that critical network services like DNS and DHCP are running.
•	Logs the results of each check.
•	Sends alerts if any issues are detected.
This script is useful for ensuring the reliability and availability of network infrastructure by providing early detection of potential problems.
Installation
Prerequisites
Before you can run the script, ensure the following are installed on your system:
•	Bash (which is typically available by default on most Unix-based systems).
•	ping utility (available by default on most systems).
Clone the Repository
To get started, clone the repository to your local machine:
bash
Copy code
git clone https://github.com/dunnar04/network-health-monitoring.git
cd network-health-monitoring
Set Permissions
Make sure the script is executable:
bash
Copy code
chmod +x network_health_monitor.sh
Usage
Running the Script
To run the script, simply execute it from the command line:
bash
Copy code
./network_health_monitor.sh
Customization
You can customize the script to suit your needs:
•	Devices to Monitor: Update the devices array in the script with the IP addresses or hostnames of the devices you want to monitor.
•	Logging: The script logs results to a file named network_health.log. You can change the log file location by editing the log_file variable.
•	Alerting: Modify the alert section in the script to customize how you want to receive alerts (e.g., via email, Slack, etc.).
