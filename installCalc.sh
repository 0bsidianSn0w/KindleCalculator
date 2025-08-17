#!/bin/bash
cd /mnt/us/documents || exit 1

# Check if GitHub is reachable
if ! curl -s --head --request GET https://github.com/ | grep "200 OK" > /dev/null; then
    echo "Cannot reach GitHub. Check your internet connection."
    exit 1
fi

# Download the ZIP
curl -L -o install.zip https://codeload.github.com/0bsidianSn0w/KindleCalculator/zip/refs/tags/Latest

# Create temp folder
mkdir -p TMPR24jt2kh

# Unzip
unzip -d /mnt/us/documents/TMPR24jt2kh/ install.zip

# Move the calculator to extensions
mv TMPR24jt2kh/*/basicCalculator/ /mnt/us/extensions/

# Clean up
rm -rf /mnt/us/TMPR24jt2kh/
rm /mnt/us/documents/installCalc.sh

echo "Installation complete!"

