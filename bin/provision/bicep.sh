#!/bin/bash

# Fetch the latest Bicep CLI binary
curl -Lo bicep.bin https://github.com/Azure/bicep/releases/latest/download/bicep-linux-x64
# Mark it as executable
chmod +x ./bicep.bin
# Add bicep to your PATH (requires admin)
sudo mv ./bicep.bin /usr/local/bin/bicep
# Verify you can now access the 'bicep' command
bicep --help
# Done!
  

