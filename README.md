**Safari Update Script for Pre-Sequoia macOS**

This script is designed to check for and install Safari updates on macOS devices running versions earlier than macOS Sequoia.

**Features**

- Checks for available Safari updates.
- Installs the latest Safari update if available.

Prerequisites

- macOS version earlier than macOS Sequoia.
- Admin privileges (script requires sudo for software updates if ran locally on mac device).

**Usage**

**1. Download the Script**
Clone this repository or download the safari-update-pre-sequoia.sh file.

**2. Grant Execute Permissions**
Ensure the script is executable by running:
  chmod +x safari-update-pre-sequoia.sh

**3. Run the Script**
Execute the script using:

./safari-update-pre-sequoia.sh

The script will:

1. Check for Safari updates.
2. Display the update version (if any).
3. Install the available Safari update.

**Notes**

This script is intended for macOS versions prior to Sequoia. It may not function as expected on macOS Sequoia or later.
Ensure you have a stable internet connection when running the script.

**License**

This project is licensed under the MIT License. See the LICENSE file for details.

**Contributing**

Feel free to submit issues or pull requests to enhance the functionality of this script.
