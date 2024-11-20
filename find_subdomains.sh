#!/bin/bash

# Script to find subdomains of a given domain
# Author: Deepak Kumar
# Prerequisite: Install subfinder and assetfinder

# Check if the domain is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1
OUTPUT_FILE="${DOMAIN}_subdomains.txt"

# Check if tools are installed
command -v subfinder >/dev/null 2>&1 || { echo >&2 "subfinder is not installed. Install it first."; exit 1; }
command -v assetfinder >/dev/null 2>&1 || { echo >&2 "assetfinder is not installed. Install it first."; exit 1; }

echo "Finding subdomains for $DOMAIN..."

# Use subfinder
echo "Running subfinder..."
subfinder -d $DOMAIN -silent > subfinder_result.txt

# Use assetfinder
echo "Running assetfinder..."
assetfinder --subs-only $DOMAIN > assetfinder_result.txt

# Combine results and remove duplicates
echo "Combining results and removing duplicates..."
cat subfinder_result.txt assetfinder_result.txt | sort -u > $OUTPUT_FILE

# Clean up temporary files
rm subfinder_result.txt assetfinder_result.txt

echo "Subdomains found are saved in $OUTPUT_FILE"
