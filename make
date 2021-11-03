#!/bin/sh

# Colors
NC='\033[0m'
BBlue='\033[1;34m'

echo "${BBlue}Starting...${NC}"
curl -s https://gist.githubusercontent.com/iammayron/116c79c131b1c6dd7485c5bb8141de6c/raw/037ed61b1dbb4141ed68e4e754a540ade63d8a83/run | zsh
