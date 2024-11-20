#!/bin/bash
# Safari Update Script for Pre-Sequoia macOS
# Created by: Samstar777

# Constants for the script
LOG_FILE="/tmp/safari_update.log"
OS_VERSION=$(sw_vers -productVersion)
SEQUOIA_VERSION="15.0" # macOS Sequoia version number

# Function to log messages
log_message() {
    local MESSAGE="$1"
    echo "$(date "+%Y-%m-%d %H:%M:%S") : $MESSAGE" | tee -a "$LOG_FILE"
}

# Function to check macOS compatibility
check_macos_version() {
    if [[ "$OS_VERSION" > "$SEQUOIA_VERSION" || "$OS_VERSION" == "$SEQUOIA_VERSION" ]]; then
        log_message "ERROR: This script is intended for macOS versions earlier than Sequoia (15.0). Current version: $OS_VERSION"
        exit 1
    fi
    log_message "macOS version check passed. Current version: $OS_VERSION"
}

# Function to check and install Safari updates
check_and_update_safari() {
    log_message "Checking for Safari updates..."
    
    # Get the list of Safari updates
    Check_SafariUpdate=$(sudo softwareupdate -l 2>/dev/null | grep Safari | grep -o 'Safari[^[:blank:]]*' | head -n 1)
    
    if [[ -z "$Check_SafariUpdate" ]]; then
        log_message "No Safari updates found."
        exit 0
    else
        log_message "Safari update available: $Check_SafariUpdate"
    fi

    # Install the Safari update
    log_message "Installing Safari update: $Check_SafariUpdate"
    if sudo softwareupdate -i "$Check_SafariUpdate"; then
        log_message "Safari update installed successfully: $Check_SafariUpdate"
    else
        log_message "ERROR: Failed to install Safari update: $Check_SafariUpdate"
        exit 1
    fi
}

# Main script execution
log_message "Safari Update Script started."
check_macos_version
check_and_update_safari
log_message "Safari Update Script completed successfully."
