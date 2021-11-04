#!/bin/sh

# Colors
NC='\033[0m'
BBlue='\033[1;34m'
BRed='\033[1;33m'
timestamp=`date +%Y%m%d%H%M%S`

echo "${BBlue}Starting...${NC}"
curl -s https://raw.githubusercontent.com/iammayron/devsquad-setup/master/run -o ./run-${timestamp}
zsh ./run-${timestamp}
rm -f run-${timestamp}
