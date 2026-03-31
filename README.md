# Open Source Capstone: Apache Web Server & Bash Automation

## Project Overview
This repository contains the deployment files and automation scripts I built for my Open Source Capstone project. The main objective was to put Free and Open-Source Software (FOSS) principles into practice by setting up, securing, and managing an Apache server on a Fedora Linux machine. 

Alongside the server setup, I wrote a suite of Bash scripts to automate the day-to-day system administration tasks, keeping the server healthy and easy to debug.

## Built With
* **OS:** Fedora Linux (Workstation Edition)
* **Web Server:** Apache HTTP Server (`httpd`)
* **Service Management:** `systemd` / `systemctl`
* **Scripting:** Bash
* **Security:** SELinux and `firewalld`

## Security Footprint
I designed this setup with strict security isolation in mind rather than just a default install:
* **Process Isolation:** The main HTTP daemon starts as `root` to secure port 80, but all actual web traffic is handled by a restricted, unprivileged `apache` user.
* **Directory Structure:** Core configs are locked to `/etc/httpd`, and logs are safely routed to `/var/log/httpd`.
* **Network Defense:** The internal firewall is configured to explicitly drop everything except standard HTTP (80) and HTTPS (443) traffic.

## The Automation Scripts
To keep the server running smoothly, I built five specific shell scripts to handle routine auditing and troubleshooting.

### 1. system_identity.sh
A quick diagnostic dashboard. It queries the system to print out the currently authenticated user, the specific Fedora version, the active kernel, and the total system uptime. 

### 2. package_inspector.sh
An automated software auditor. It uses a loop to check the local RPM database and quietly verifies if essential tools (like `httpd`, `git`, and `curl`) are installed, printing a clean status report instead of raw terminal noise.

### 3. disk_auditor.sh
A storage safety monitor. It parses the server's filesystem data to check the exact capacity of the root (`/`) partition. If the drive creeps past 80% full, it triggers a critical warning to help prevent a storage-related crash.

### 4. log_analyzer.sh
A debugging tool that cuts through system noise. Instead of making you read through hundreds of lines of logs, it pulls the last 200 system events and filters them to display only the five most recent critical errors or failures.

### 5. manifesto_generator.sh
A script demonstrating automated file generation. It uses I/O redirection to programmatically write a text file containing the core principles of the open-source philosophy directly to the hard drive, and then prints it back to the screen to verify.

## How to Run the Scripts

If you want to test these out on a Fedora or RedHat-based machine:

1. Clone this repository:
   ```bash
   git clone <repository-url>
