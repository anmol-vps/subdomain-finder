# Find Subdomains

A simple Bash script to discover subdomains for a given domain using `subfinder` and `assetfinder`.

## Features

- Automatically discovers subdomains of a target domain.
- Combines results from multiple tools (`subfinder` and `assetfinder`).
- Removes duplicates and outputs a clean list of subdomains.
- Lightweight and easy to use.

## Prerequisites

Make sure you have the following tools installed:

1. [**subfinder**](https://github.com/projectdiscovery/subfinder)  
   Install using:
   ```bash
   go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
``
1. assetfinder

Install using:

go install github.com/tomnomnom/assetfinder@latest
Installation


## Clone this repository:


git clone https://github.com/your-username/find-subdomains.git
cd find-subdomains


## Make the script executable:


chmod +x find_subdomains.sh

## Usage
Run the script by providing a target domain as an argument:


./find_subdomains.sh example.com
