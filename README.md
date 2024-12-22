# Hackerz Lab - Automation Tool

**Author**: Marttin Saji  
**GitHub**: [Hackerz Lab](https://github.com/hackerz-lab)

## About the Tool
Hacknable is a powerful automation tool designed for penetration testers, bug bounty hunters, and ethical hackers. This script integrates several essential functions to streamline reconnaissance, scanning, and exploitation workflows in Kali Linux. All results are saved in an organized structure for easy analysis.

## Features
- **Dependency Check**: Ensures required tools are installed.
- **Network Scanning**: Performs detailed scans of targets using `nmap`.
- **Subdomain Enumeration**: Finds subdomains using `sublist3r`.
- **Vulnerability Scanning**: Detects vulnerabilities with `nmap` scripts.
- **Exploit Search**: Searches exploits in the `searchsploit` database.

## Requirements
Ensure the following tools are installed:
- `nmap`
- `sublist3r`
- `searchsploit`

To quickly install dependencies, you can run the script's dependency checker.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/hackerz-lab/Automation-Script.git
   cd hackerz-lab
   ```

2. Make the script executable:
   ```bash
   chmod +x Hacknable-Pro.sh
   ```

3. Install required dependencies (optional but recommended):
   ```bash
   ./Hacknable-Pro.sh
   # Choose option 1 from the menu to check and install dependencies
   ```

## Usage
1. Run the script:
   ```bash
   ./Hacknable-Pro.sh
   ```
2. Choose an option from the menu:
   - **1**: Check Dependencies
   - **2**: Network Scan
   - **3**: Subdomain Enumeration
   - **4**: Vulnerability Scan
   - **5**: Exploit Search
   - **6**: Exit

3. Follow the prompts to input the necessary target information, and the results will be saved in the `output/` directory.

## Output
All scan results and searches will be saved in the `output/` directory with appropriate file names for easy access.

## Example
Perform a network scan on a target domain:
1. Run the script and choose option 2 (Network Scan).
2. Enter the target IP or domain when prompted.
3. View the results in `output/network_scan.txt`.

## License
This tool is free to use for ethical hacking and educational purposes. The author is not responsible for any misuse of the tool.

## Contact
For queries, suggestions, or contributions, contact **Marttin Saji** via:
- **GitHub**: [Hackerz Lab](https://github.com/hackerz-lab)
- **Email**: [Martinsaji26@gmail.com](mailto:Martinsaji26@gmail.com)
